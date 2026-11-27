#!/usr/bin/env python
'''
Plamo Linuxのパッケージに含まれているPlamoBuild.*に記された
ソースコードのURLから、新しいバージョンがリリースされているかを調べるスクリプト。
現状、従来のFTPサーバ形式(一つのディレクトリ内に複数のバージョンを置くスタイルと
バージョン番号のディレクトリに収めるスタイル)、GitHub/GitLab形式、PyPI形式、
SourceForge形式に対応している(つもり)。
git clone した日付をバージョンにしているようなのにはようなのは対応できない。

'''
import sys,os, gzip, re, argparse
import requests, posixpath, pprint
from pathlib import Path
from bs4 import BeautifulSoup as BS
from packaging.version import Version,InvalidVersion,parse
from urllib.parse import urlparse, quote, urljoin
from pprint import pformat

'''
headers を付けると、bot と見なされてハジかられることがある模様。
headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"}
'''
headers = {}

DEBUG = True

# チェック対象外の拡張子
excludes = ('.sum', '.txt', '.SUMS', '.sig', '.news', '.sha256', '.sha256sum', '.asc', '.rst', '.changes',)

class Package:
    '''
    パッケージ情報を収めるクラス。
    pkg.logfile: /var/log/packages/<pkgname> (ex: /var/log/packages/audacious)
    pkg.package_name: /var/log/packages/<pkgname> から得るパッケージ名
           (ex: audacious-4.4.2-x86_64-B1)
    pkg.package_basename: /var/log/packages/<pkgname> から得るパッケージのベース名
           (ex: audacious)
    pkg.package_vers: /var/log/packages/<pkgname> から得るパッケージのバージョン
           (ex: 4.4.2)
    pkg.build_script: /var/log/packages/<pkgname> から得るパッケージのビルドスクリプト名
           (ex: /usr/share/doc/audacious-4.4.2/PalmoBuild.audacious-4.4.2.gz)

    pkg.src_pkgbase: ビルドスクリプトのpkgbase( = package_basename)
    pkg.src_vers: ビルドスクリプトのvers( = package_base)
    pkg.src_url: ビルドスクリプトのurlから得るソースコードのURL。${vers}等は補完して
                 新しいバージョンを探す基点にする。
                 GitHub/GitLab系では専用のAPIを叩くので不要
        (ex: https://distfiles.audacious-media-player.org/audacious-4.4.2.tar.bz2 )
    pkg.src_path: ソースコードURLの親ディレクトリ
            (ex: https://distfiles.audacious-media-player.org/ )
    pkg.src_name: ソースコード名
            (ex: audacious-4.4.2.tar.bz2)
    pkg.src_ext: ソースコードの拡張子。URL等に記載されていない場合は tar.xz
            (ex: tar.bz2)
    pkg.src_basename: ソースコードのベース名(バージョン番号、拡張子を除いた部分)
            (ex: audacious)
    pkg.src_vers: ソースコード名に記載されたバージョン番号。
                  存在しない場合は pkg.pakages_ver から補完
            (ex: 4.4.2)

    パッケージ名は可能な範囲で正規化している(myprog-1.1-x86_64-B1.tzst)ので
    処理は簡単だが、ソースコードURL では myprogsrc とか myprog1.1 みたいな
    記述もある。ただし、探しに行く際はそれを使わないといけないので、
    例外処理もあちこちにある。
    '''
    def __init__(self, basename):
        self.basename = basename
        
        self.logfile = Path('/var/log/packages') / basename
        if not self.logfile.is_file() :
            print(f"/var/log/packages/{basename} が見つかりません")
            sys.exit()

        # /var/log/packages/<pkgname> からパッケージ名、ビルドスクリプトの置き場を得る
        with open(self.logfile, 'r') as f:
            for line in f: 
                if 'PACKAGE NAME:' in line :
                    self.package_name = line.split(':')[1].strip()
                    # print(f"package_name:{self.package_name}")
                    self.package_basename = self.package_name.split('-')[0]
                    chk_vers = self.package_name.split('-')[1]
                    # git-202509 みたいなバージョン番号は、とりあえず 0.1 としておく
                    try:
                        self.package_vers = Version(chk_vers)
                    except InvalidVersion :
                        self.package_vers = Version('0.1')

                if 'PACKAGE LOCATION:' in line :
                    tmp = line.split(':',1)[1].strip()
                    self.package_location = tmp
                    self.package_fullname = Path(tmp).name
                
                if 'usr/share/doc' in line and 'PlamoBuild' in line:
                    self.build_script = Path('/') / line.strip()
                    break

        '''
        ビルドスクリプト(/usr/share/doc/<pkgname>/PlamoBuild.<pkgname>-<vers>.gz)
        から、ソースコードのURL、ファイル名を得る。ビルドスクリプトは基本UTF-8だが、
        EUC-JPが残っていることもある。
        '''
        with gzip.open(self.build_script, 'rb') as f:
            data = f.read()
        try:
            text = data.decode('utf-8')
        except UnicodeDecodeError:
            text = data.decode('euc-jp')
        
        for line in text.splitlines():
            if line.startswith('#') :
                continue
            if line.startswith('pkgbase=') :
                self.src_pkgbase = line.split('=')[1].strip("\"\r\t\n'")
            if line.startswith('vers=') :
                self.src_vers = line.split('=')[1].strip("\"\r\t\n'").strip()
                # print(f"self.src_vers:{self.src_vers}:")
            if line.startswith('url=') :
                self.src_url = line.split('=')[1].strip("\"\r\t\n'")
                self.src_url = url_completion(self.src_url, self.src_vers)
                self.src_url = self.src_url.replace("${pkgbase}", self.src_pkgbase)

                if DEBUG:
                    print(f"src_url:{self.src_url}")
                break

        '''
        PlamoBuild スクリプトの url= 情報から、ソースコードのディレクトリ、ファイル名、バージョンを調べる
        ex: pkg.src_url = http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-15.2.0/gcc-15.2.0.tar.xz
        pkg_path = http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-15.2.0/
        pkg_name = gcc-15.2.0.tar.xz
        pkg_basename = gcc
        pkg_vers = 15.2.0
        '''
        self.src_path = posixpath.dirname(self.src_url)
        self.src_name = posixpath.basename(self.src_url)
        
        # tcl/tk は 'tcl9.0.4-src.tar.gz' みたいなのを返すので例外処理
        if self.package_basename == 'tcl' :
            self.src_name = self.src_name.replace('tcl','tcl-').replace('-src','')
        if self.package_basename == 'tk':
            self.src_name = self.src_name.replace('tk','tk-').replace('-src','')

        # timezoneは 'tzdata2024b.tar.gz' みたいなスタイル
        if self.package_basename == 'timezone' :
            self.src_name = self.src_name.replace('data','data-')
            
        match = re.search(r"\.(?:tar\.(?:gz|bz2|xz|zst)|tgz|zip|rar|zstd)$", self.src_name)
        if match:  # ソースコードの tar ball まで指定
            if '-' in self.src_name[: match.start()] :
                # マッチした拡張子 (".tar.gz" から先頭の '.')を除く
                self.src_ext = match.group(0).lstrip('.')
                # 拡張子を除いた部分からbasenameとversを取る ("mypackage-1.0.0")
                (self.src_basename, self.src_vers) = self.src_name[: match.start()].rsplit('-',1)
                # breakpoint()
        
            else: # ソースURLにバージョン番号がない場合はパッケージ名から補完
                self.src_ext = "tar.xz"
                self.src_basename = self.package_basename
                self.src_vers = str(self.package_vers)
                if DEBUG :
                    print(f"self.package_name:{self.package_name}")
        else:  # git+https://gitlab.gnome.org/GNOME/gnome-terminal.git みたいな場合。gitの場合はAPIを叩くのでURLは不要
            self.src_ext = 'tar.xz'
            self.src_basename = self.package_basename
            self.src_vers = str(self.package_vers)
        if len(str(self.src_vers)) == 0:  # エラー避け(PlamoBuildの書き間違い等)
            self.src_vers = str(self.package_vers)

def url_completion(url, ver):
    '''
    bashの変数展開を使って省略していたURLの ${vers} の部分を復元する
    '''
    url = url.replace('git+','').replace('#tag','').replace('.git','')
    # 2.6 => 26
    url = url.replace("${vers/.}",ver.replace('.',''))
    # 3.5.1 => 3.5
    url = url.replace("${vers%.*}", ver.rsplit('.',1)[0])
    # 6_3 => 6.3
    url = url.replace("${vers/_/-}", ver.rsplit('_',1)[0])
    url = url.replace("${vers}", ver)

    return(url)

def get_version(name:str) :
    pattern = r'-(\d+(?:\.\d+)*)'
    match = re.search(f"{pattern}", name)
    if match :
        try:
            version = Version(match.group(1))
            return(version)
        except InvalidVersion:
            print(f"in get_version, {match.group(1)} is not a valid version number")
            return None
    else :
        print(f"in get_version, {name} doesn't have version string?")
        return None
            
    
def check_github_codeberg(pkg):
    '''
    GitHub/codeberg のAPIを使って最新版の情報を得る。
    URLが違う程度で、構造は同じっぽい。
    https://codeberg.org/smxi/inxi/archive/3.3.35-1.tar.gz
    owner = smxi
    repos = inxi
    '''

    # url のパス名を分解して、owner/repo を得る
    parts = urlparse(pkg.src_url).path.strip("/").split("/")
    # print(parts)
    owner = parts[0]
    repo = parts[1]
  
    if 'github' in pkg.src_url :
        release_url = f"https://api.github.com/repos/{owner}/{repo}/releases/latest"
        tags_url = f"https://api.github.com/repos/{owner}/{repo}/tags"
        tag_page_url = f"https://github.com/{owner}/{repo}/tags"
        print("check latest in GitHub")        
    else:
        release_url = f"https://codeberg.org/api/v1/repos/{owner}/{repo}/releases/latest"
        tags_url = f"https://codeberg.org/api/v1/repos/{owner}/{repo}/tags"
        tag_page_url = f"https://codeberg.org/{owner}/{repo}/tags"
        print("check latest in codeberg")        

    data = get_json(release_url)
    # GitHub/CodeBerg で release が無い場合、tags を見る
    if data == None:
        print("cannot found release tag, so check all tags.. ")
        tags = get_json(tags_url)
        # if DEBUG:
        #     pprint.pprint(tags)
        found_versions = []
        for tag in tags:
            tag_name = tag.get('name','')
            try:
                # "v1.0.0" のような場合、'v' や 'V' を除去して解析
                clean_name = tag_name.lstrip("vV")
                ver = Version(clean_name)
                if check_version(pkg, ver):
                    found_versions.append(tag.get('tarball_url',''))
            except InvalidVersion:
                # "latest" や "stable" などSemVer以外のタグは無視
                continue
        if DEBUG :
            print(f"checking tags, found_versions:{found_versions}")
            
        if not found_versions :
            return None
        else:
            return found_versions
    else :     # release タグがあった場合
        if DEBUG :
            print(f"data['tag_name']:{data['tag_name']}")

        # ghostscript は 'gs10080' みたいなタグを返す。ケタを決め打ちしている
        # ので、将来的にはマズいかも。
        if 'gs10' in data['tag_name'] :
            m = re.fullmatch(r"gs(\d{2})(\d{2})(\d)", data['tag_name'])
            tag_version = '.'.join(m.groups())
        # data['tag_name'] からバージョン番号部のみを取り出す
        else:
            m = re.search(r'(\d+(?:[_\.]\d+)+)', data['tag_name'])
            if m:
                vers = m.group(1).replace('_', '.')
                tag_version = vers
            else:
                tag_version = data['tag_name']
    # breakpoint()
    if DEBUG :
        print(f"tag_version:{tag_version}")
    if 'master.mint' in tag_version :
        tag_version = tag_version.replace('master.mint','')
    latest = Version(tag_version)
    found_versions = []
    if check_version(pkg, latest):
        '''
        たいていのレポジトリはdata['assets']が登録されているが、
        登録されていない場合は data['tarball_url'] を返す
        '''
        for i in data['assets'] :
            url = i['browser_download_url']
            if not url.endswith(excludes) :
                found_versions.append(url)
        if len(found_versions) < 1:
            found_versions.append(data['tarball_url'])

    # 実際のファイルでない(url端)場合は、tag を調べる
    is_file = False
    for i in found_versions :
        if i.endswith('tar.gz') or i.endswith('tar.xz') or i.endswith('tar.bz2') or i.endswith('tar') :
            is_file = True
            break
    if is_file == False :
        tag_vers = check_tags(pkg)
        found_versions.extend(tag_vers)
            
    return(found_versions)

def check_tags(pkg):
    '''
    GitHub/Codeberg の tag ページから、tag ごとの tar.gz を探す
    '''
    # url のパス名を分解して、owner/repo を得る
    
    parts = urlparse(pkg.src_url).path.strip("/").split("/")
    # print(parts)
    owner = parts[0]
    repo = parts[1]

    # https://github.com/ + {owner}/{repo}/tags 
    base_url = f"{urlparse(pkg.src_url).scheme}://{urlparse(pkg.src_url).netloc}/"
    tag_page_url = f"{base_url}/{owner}/{repo}/tags"

    tags = get_git_tags(pkg, tag_page_url)
    # tags に base_url を足して完全なURLにする
    tags = [urljoin(base_url, tag) for tag in tags]

    return(tags)

def get_git_tags(pkg, url):

    soup_obj = get_soup_obj(url)
    tmp_tags = []
    founds = []
    for a_tag in soup_obj.find_all('a') :
        href = a_tag.get('href','')
        if 'archive' in href and not 'archiveprogram' in href:
            if DEBUG:
                print(f"in get_git_tags, href:{href}")
            tmp_tags.append(href)

    for i in tmp_tags :
        filename = i.split('/')[-1]
        match = re.search(r"\d+(?:\.\d+)*", filename)
        if match:
            vers = Version(match.group(0))
            if check_version(pkg, vers) :
                founds.append(i)
            else:
                continue
        else:
            continue
            
    return(founds)

def check_gitlab(pkg):
    '''
    gitlab 系のSCM。github系とは異なり、project ベースの管理になっている。
    '''
    print("check latest in gitlab")
    u = urlparse(pkg.src_url)
    parts = u.path.strip("/").split("/")

    project_id = None
    found_versions = []
    if '/project/' in u.path :
        for i, part in enumerate(parts):
            if part == '-' and i+2 < len(parts) and parts[i+1] == 'project':
                project_id = parts[i+2]
                break
    else:
        project_path = u.path.split("/-/")[0].lstrip('/')
        project = quote(f"{project_path}", safe='')
        url = f"{u.scheme}://{u.netloc}/api/v4/projects/{project}"
        if DEBUG:
            print(f"checking:{url}")
        data = get_json(url)
        project_id = data['id']

    url = f"{u.scheme}://{u.netloc}/api/v4/projects/{project_id}/releases/permalink/latest"
    if DEBUG:
        print(f"checking:{url}")
    data = get_json(url)
    # GitLab で release が無い場合、tags を見る
    if data == None :
        gitlab_tags_url = f"{u.scheme}://{u.netloc}/api/v4/projects/{project_id}/repository/tags"
        if DEBUG:
            print(f"checking:{gitlab_tags_url}")
        tags = get_json(gitlab_tags_url)
        for tag in tags:
            tag_name = tag.get('name','')
            try:
                # "v1.0.0" のような先頭の 'v' や 'V' を除去して解析
                clean_name = tag_name.lstrip("vV")
                ver = Version(clean_name)
                if DEBUG:
                    print(f"ver:{ver}, pkg_ver:{pkg.src_vers}")
                if check_version(pkg, ver):
                    found_versions.append(tag.get('tarball_url',''))

            except InvalidVersion:
                # "latest" や "stable" などSemVer以外のタグは無視
                continue
        if DEBUG :
            print(f"in get_latest_from_github, found_versions:{found_versions}")
            
        if not found_versions :
            return None
        else:
            return found_versions
    else:
        found_versions = []
        found = False
        for i in data['assets']['sources'] :
            new_url = i['url']
            # print(f"new_url:{new_url}")
            found_filename = Path(urlparse(new_url).path).name
            # print(f"new_filename:{found_filename}")
            match = re.search(r'-(\d+(?:\.\d+)+)', found_filename)
            if match:
                found_version = Version(match.group(1))
                if DEBUG:
                    print(f"checking {found_version}")
                if check_version(pkg, found_version) :
                    found_versions.append(new_url)
                    found = True
                else:
                    pass
        return(found_versions)

def check_version(pkg, chk:Version):
    '''
    現在のバージョン(pkg.src_vers/pkg.package_vers)と見つけたバージョンの比較
    chk は事前に Version() しておく必要あり。
    pkg.src_vers が見つからなければ pkg.package_vers を使う
    '''
    if DEBUG:
        print(f"in check_version, chk:{chk}")
    try:
        current_version = Version(pkg.src_vers)
    except InvalidVersion:
        current_version = pkg.package_vers  # package_vers は Version()

    if chk > current_version :
        return(True)
    else:
        return(False)

def check_version2(chk1, chk2):
    '''
    単なる2つの文字列をバージョン番号として比較する。
    ensure_version() は Version() 化処理
    '''

    chk1 = ensure_version(chk1)
    chk2 = ensure_version(chk2)
    if DEBUG:
        print(f"check_version2: chk1:{chk1}, chk2:{chk2}")

    if chk2 >= chk1 :  # 同じディレクトリ内に新しいバージョンがあるかもしれない
        return True
    else:
        return False

def ensure_version(v):
    # すでに Version オブジェクトならそのまま返し、違えば変換する
    if isinstance(v, Version):
        return v
    return Version(str(v))

def get_soup_obj(url):
    '''
    指定したURLにアクセスし、結果を BeautifuSoup なオブジェクトとして返す
    '''
    if not url.endswith('/') :
        url = url + '/'
    try:
        r = requests.get(url, timeout=30)
        r.raise_for_status()
        bs_obj = BS(r.text, 'html.parser')
        return(bs_obj)
    except requests.exceptions.HTTPError as http_err:
        print(f"HTTPエラーが発生しました: {http_err}")
        return None
    except Exception as err:
        print(f"その他のエラーが発生しました: {err}")
        return None

def get_json(url):
    '''
    指定したURLにアクセスし、結果を Jsonなオブジェクトとして返す
    '''
    try:
        r = requests.get(url, timeout=30)
        r.raise_for_status()
        return(r.json())
    except requests.exceptions.HTTPError as http_err:
        print(f"HTTPエラーが発生しました: {http_err}")
        return None
    except Exception as err:
        print(f"その他のエラーが発生しました: {err}")
        return None
    
def get_real_url(pkg, url_base, vers):
    '''
    新バージョンのディレクトリ内でソースコードらしいリンクを探す。
    ソースコードは pkg.src_basename - version になっているはず
    '''
    new_url = url_base + '/' + vers
    # mozilla 系はもう一段ディレクトリを掘っている
    if 'firefox' in new_url or 'thunderbird' in new_url :
        new_url = new_url + 'source/'

    if DEBUG :
        print(f"in get_real_url, new_url:{new_url}")
        
    soup_obj = get_soup_obj(new_url)
    if soup_obj == None:
        print("URLの取得に失敗しました")
        return None
    else:
        new_src = []
        for a_tag in soup_obj.find_all('a') :
            # print(f"a_tag:{a_tag}")
            href = a_tag.get("href", "")
            # print(f"href:{href}")
            if '/' in href:
                href = href.split('/')[-1]

            ver_str = ''
            # target_exts = ('.tar.xz', 'tar.gz', 'tar.bz2', 'tar.lz', 'tgz', )
            if f"{pkg.src_basename}-" in href :
                if href.endswith(excludes) :
                    continue
                elif check_arch(href) :
                    continue
                else:
                    if DEBUG:
                        print(f"get_real_url, href:{href}")

                    m = re.search(r'(\d+(?:[_\.]\d+)+)', href)
                    if m:
                        chk_ver = Version(m.group(1).replace('_','.'))
                        if check_version(pkg, chk_ver) == True:
                            tmp = new_url + href
                            new_src.append(tmp)
                            if DEBUG:
                                print(f"new_src:{new_src}, href:{href}")

        return(new_src)
    
    return None

def check_arch(url):
    other_arch = ('-ppc','-aix','-darwin','-arm','-win')
    for i in other_arch:
        if i in url:
            return True

    return False

def check_fileserver(pkg):
    '''
    従来のファイルサーバを探す。
    一つのディレクトリの下に複数の異なるバージョンのソースコードを配置する
      (https://ftp.gnu.org/gnu/gawk/gawk-5.3.{0,1,2}.tar.gz)スタイルと
    バージョン番号を持つディレクトリ以下にソースコードを配置するスタイルに対応
    
    '''
    # ディレクトリ末尾がバージョン番号(数字)なら一つ上も見る
    # http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-15.2.0/ =>
    # http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/
    # https://archive.mozilla.org/pub/firefox/releases/155.0/source/ みたいなのも

    check_parent = False
    if DEBUG:
        print(f"pkg.package_vers:{pkg.package_vers}")
        print(f"pkg.src_vers:{pkg.src_vers}")
        print(f"pkg.src_path:{pkg.src_path}")

    if 'timezone' in pkg.basename : # timezone-2024a みたいな。。
        check_ver = str(pkg.package_vers)
    else:
        ver_parts = str(pkg.package_vers).split('.')  # 2.88.2 みたいなのの場合
        check_ver = '.'.join([ver_parts[0],ver_parts[1]])
    if check_ver in pkg.src_path :
        check_parent = True
        parts = pkg.src_path.split('/')
        for i, part in enumerate(parts) :
            if str(pkg.package_vers) in part :
                break
        pkg_path = '/'.join(parts[:i])
    else:
        pkg_path = pkg.src_path
        
    if DEBUG:
        print(f"pkg_path:{pkg_path}")

    # myprog-1.0.0 の形式を file_pattern に準備
    if 'timezone' in pkg.basename :
        file_pattern = re.compile(r"tzdata(\d{4}[a-z])")
    else:
        file_pattern = re.compile(
            rf"{re.escape(pkg.src_basename)}-(\d+\.\d+(?:\.\d+)*)"
        )

    soup_obj = get_soup_obj(pkg_path)
    if soup_obj == None:
        print(f"{pkg_path} が利用できません")
        sys.exit()
    else:
        found_versions = [] # [(Version('3.3'), href)]

        for a_tag in soup_obj.find_all('a') :  # 記載されたリンクについて
            href = a_tag.get("href", "").replace('./','')     # 参照先を拾う
            # print(f"href:{href}")
            ver_str = ''

            if DEBUG:
                print(f"href:{href}")

            if href.endswith(excludes) :
                continue
            if check_parent : # 一つ上のディレクトリを見ている。対象はそこのサブディレクトリ
                if DEBUG:
                    print(f"in parent directory, href:{href}")
                if re.search(rf"^{pkg.src_basename}-",href) : # my-prog-{0.9,1.1}/ スタイル
                    ver_str = re.sub(rf"^{pkg.src_basename}-","",href).rstrip('/')
                    if DEBUG:
                        print(f"ver_strA:{ver_str}")  
                    try :
                        tst_ver = Version(ver_str) # バージョン番号？
                        if check_version(pkg, tst_ver) == True :
                            found_versions.append((tst_ver, href))
                    except:
                        pass
                else:
                    ver_str = href.rstrip('/').split('/')[-1]  # my-prog/{0.9,1,0}/スタイル
                    if DEBUG :
                        print(f"ver_strB:{ver_str}")
                    try :
                        tst_ver = Version(ver_str)
                        # print("hoge")
                        if check_version2(check_ver, tst_ver) == True :
                            # found_versions.append((tst_ver, href))
                            found_versions.append((tst_ver, ver_str+'/'))
                    except:
                        pass
            else: # 同じディレクトリ内に複数バージョンのtar ballが存在
                m = file_pattern.search(href)  # "{(pkg.src_basename)}-(\d+\.\d+(?:\.\d+)*)"
                if m :  
                    # ver_str = m.group(1)
                    if DEBUG:
                        print(f"href:{href}")
                    # 拡張子の部分(.tar.xz、.rar)を除去
                    tmp = re.sub(r"\.(?:tar\.(?:gz|bz2|xz|zst)|tgz|zip|rar|zstd)$", "", href)
                    # パッケージ名を除去。timezoneは tzdata2026a.tar.gz みたいな形
                    if 'timezone' in pkg.package_name :
                        ver_str = re.sub(rf"{pkg.src_basename}","",tmp)
                    else:
                        ver_str = re.sub(rf"{pkg.src_basename}-","",tmp)

                    # breakpoint()
                    try:
                        if DEBUG:
                            print(f"ver_strC:{ver_str}")
                        tst_ver = Version(ver_str)
                        if check_version(pkg, tst_ver) == True:
                            found_versions.append((tst_ver, href))

                    except Exception:
                        continue
                else:
                    continue

        found_versions2 = []
        for i in found_versions:
            if i[1].endswith('/') :
                '''
                href の末尾が / の場合、そのディレクトリ内にある実際の
                ファイル名へのURLへ変換する
                '''
                new_urls = get_real_url(pkg, pkg_path, i[1])
                found_versions2.extend(new_urls)
            else:
                found_versions2.append(f"{pkg_path}/{i[1]}")

        return(found_versions2)

def check_sourceforge(pkg):
    '''
    sourceforge APIを使ってソースコードのデフォルトダウンロード(best_release.json)を
    探す
    '''
    print('check latest in SourceForge')
    # print(f"pkg.src_url:{pkg.src_url}")
    parts = urlparse(pkg.src_url).path.strip('/').split('/')    
 
    if parts[0] == 'projects' or parts[0] == 'project' :
        project = parts[1]
    else:
        project = parts[0]

    sf_url = f"https://sourceforge.net/projects/{project}/best_release.json"
    if DEBUG:
        print(f"URL:{pkg.src_url}, SF project:{project}")
        print(f"sf_url:{sf_url}")
    data = get_json(sf_url)
    found_versions = []
    filename = data['platform_releases']['linux']['filename'].split('/')[-1]
    url = data['platform_releases']['linux']['url'].split('?')[0]
    if DEBUG:
        print(f"filename:{filename}")
    # 拡張子の部分(.tar.xz、.rar)を除去
    tmp = re.sub(r"\.(?:tar\.(?:gz|bz2|xz|zst)|tgz|zip|rar|zstd)$", "", filename)
    # パッケージ名を除去
    if DEBUG:
        print(f"tmp:{tmp}")
        print(f"pkg.src_basename:{pkg.src_basename}")
        print(f"pkg.package_basename:{pkg.package_basename}")
    tmp = tmp.replace('.src','').replace('-src','')
    if 'unzip' in tmp:  # unzip610b.zip みたいな形式
        best_vers = Version(tmp.replace('unzip',''))
    else:
        best_vers = Version(re.sub(rf"^{pkg.src_basename}[-_]?","",tmp))
        
    if check_version(pkg, best_vers) :
        print(f"best_version:{filename}")
        found_versions.append(url)
        return(found_versions)
    else:
        return None

def check_pypi(pkg):
    '''
    PyPI APIを使ってソースコードの最新版を探す

    '''
    print("check latest in PyPI")
    src_name = posixpath.basename(pkg.src_url)
    tmp = re.sub(r"\.(?:tar\.(?:gz|bz2|xz|zst)|tgz|zip|rar|zstd)$", "", src_name)
    (basename, version) = tmp.rsplit('-',1)
    pypi_url = f"https://pypi.org/pypi/{basename}/json"
    data = get_json(pypi_url)
    latest = Version(data['info']['version'])
    if DEBUG :
        print(f"latest:data['info']['version']")
    found_versions = []
    if check_version(pkg, latest) == True :
        for item in data['urls'] :
            chk = re.search(r"\.(?:tar\.(?:gz|bz2|xz|zst)|tgz|zip|rar|zstd)$", item['filename'])
            if chk:
                found_versions.append(item['url'])
                
        return found_versions
    else:
        return None
            
def main():

    global DEBUG
    parser = argparse.ArgumentParser()
    parser.add_argument('-v', '--verbose', action='store_true', help='verbose(debug) mode')
    parser.add_argument('files', nargs='*', help='input files')
    
    args = parser.parse_args()
    DEBUG = args.verbose
    
    for basename in args.files:
        pkg = Package(basename)

        print(f"package_name:{pkg.package_name}")
        if DEBUG:
            print(f"package_fullname:{pkg.package_fullname}")
            print(f"build_script:{pkg.build_script}")
            print(f"src_url:{pkg.src_url}")

        if 'github' in pkg.src_url or 'codeberg' in pkg.src_url :
            new_vers = check_github_codeberg(pkg)
            # new_vers は実際のファイルではなく、URL なこともある
        elif 'gitlab' in pkg.src_url:
            new_vers = check_gitlab(pkg)
        elif 'pythonhosted.org' in pkg.src_url:
            new_vers = check_pypi(pkg)
        elif 'sourceforge' in pkg.src_url:
            new_vers = check_sourceforge(pkg)
        else:
            # 伝統的な FTP サーバスタイル
            new_vers = check_fileserver(pkg)

        print(f"current_package:{pkg.package_name}")
        if new_vers :
            print("found new(latest) version(s)")
            for i in new_vers:
                print(i)
        else:
            print("No new version found")
    
if __name__ == "__main__":
    main()
    
