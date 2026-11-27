#!/usr/bin/env python

'''
Python 関連モジュールのうち、Plamo のパッケージ経由と
pip 経由をチェックするスクリプト。

pip list で、/usr/lib/python3.xx/site-packages/ 以下にインストール
されたモジュールのリストが出るので、それを元に /var/log/packages/ 以下で
info/METADATA、egg-info/PKG-INFO をインストールしたパッケージを調べ、
Plamoパッケージ経由か PIP経由かを調べている。

ついでに pip list --outdated で各モジュールの更新を調べられるので、
-o オプションで対応してみた。

'''

from pathlib import Path
import re, sys, argparse
import subprocess

def get_pip_list():
    '''
    pip list で /usr/lib/python3.xx/site-packages/ 以下にインストールされた
    Python モジュールのリスト(pip_pkgs[name] = vers)を作る。
    '''
    result = subprocess.run(
        ["python", "-m", "pip", "list"],
        capture_output=True,
        text=True,
        check=True,
    )
    pip_pkgs = {}
    for line in result.stdout.splitlines():
        if line.startswith('Package') or line.startswith('----') :
            continue
        else:
            (name, vers) = line.split()
            pip_pkgs[name] = vers
            
    return(pip_pkgs)

def get_pip_outdated():
    '''
    pip list --outdated で、インストールしているモジュールのうち、
    upstream で更新されているものを調べ、
    outdated_pkgs[name] = (current_vers, latest, type) というリストを作る。
    '''
    result = subprocess.run(
        ["python", "-m", "pip", "list", "--outdated"],
        capture_output=True,
        text=True,
        check=True,
    )
    outdated_pkgs = {}
    for line in result.stdout.splitlines():
        if line.startswith('Package') or line.startswith('----') :
            continue
        else:
            (name, vers, latest, type) = line.split()
            outdated_pkgs[name] = (vers, latest, type)
            
    return(outdated_pkgs)
    

def read_metadata(file):
    # print(f"opening {file}")
    with open(file, 'rt', encoding='utf-8', errors='ignore') as f :
        for line in f:
            if re.match('^Name', line) :
                name = line.split(':')[1].strip()
            elif re.match('^Version:', line):
                version = line.split(':')[1].strip()
                break
    return((name, version))

def read_pkginfo(file):
    # print(f"opening {file}")
    with open(file, 'rt', encoding='utf-8', errors='ignore') as f :
        for line in f :
            if re.match('^Name:', line):
                name = line.split(':')[1].strip()
            elif re.match('^Version:', line):
                version = line.split(':')[1].strip()
                break
    return((name, version))

def get_plamo_pkgs():
    '''
    /var/log/packages/ 以下のファイルから、info/METADATA, egg-info/PKG-INFO を
    インストールしたパッケージを探し、plamo_pkgs[dist_name] = (pkg.name, version)
    なリストを作る。
    dist_name は本来の名称、pkg.name は Plamo のパッケージ名(python_hogehoge 等)

    '''
    
    plamo_pkgs = {}
    for pkg in Path("/var/log/packages").iterdir():
        # print(f"checking:{pkg}")
        if not pkg.is_file():
            continue

        for line in pkg.read_text(errors="replace").splitlines():
            if '_vendor' in line or 'vendor' in line :
                continue
        
            if "info/METADATA" in line:
                file = '/'+line
                (dist_name, version) = read_metadata(file)
                # print(pkg.name, dist_name, version, line)
                plamo_pkgs[dist_name] = (pkg.name, version)
            elif "egg-info/PKG-INFO" in line:
                file = '/'+line
                (dist_name, version) = read_pkginfo(file)
                # print(pkg.name, dist_name, version, line)
                plamo_pkgs[dist_name] = (pkg.name, version)
    
    return(plamo_pkgs)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-o', '--outdated', action='store_true', help='check updated modules')
    args = parser.parse_args()

    # pip_pkgs は /usr/lib/python3.xx/site-packages/ の全モジュールのリスト
    pip_pkgs = get_pip_list()

    if args.outdated == True:
        # outdated_pkgs[name] = (current_vers, latest, type) のリストが返る
        outdated_pkgs = get_pip_outdated()
        
    # plamo_pkgs は Plamo のパッケージとしてインストールしたモジュールのリスト
    plamo_pkgs = get_plamo_pkgs()

    pip_names = set()  # インストールされている全モジュール名
    for i in pip_pkgs.keys() :
        pip_names.add(i)

    # print(f"all modules:{pip_names}, {len(pip_names)}")

    pkg_names = set()  # Plamo の Pkg としてインストールされたモジュール名
    for i in plamo_pkgs.keys() :
        pkg_names.add(i)

    # print(f"packaged modules:{pkg_names}, {len(pkg_names)}")

    from_pip = pip_names - pkg_names  # pip 経由でインストールされたモジュール名
    # print(f"pip_installed modules:{from_pip}, {len(from_pip)}")

    if args.outdated == True :

        pkg_outdated = {}  # Pkg としてインストールされた分
        pip_outdated = {}  # Pip 経由でインストールされた分
        for i in sorted(outdated_pkgs.keys()) :
            if i in pkg_names:
                pkg_outdated[i] = (plamo_pkgs[i][0], outdated_pkgs[i][0], outdated_pkgs[i][1])
            else:
                pip_outdated[i] = (i, outdated_pkgs[i][0], outdated_pkgs[i][1])
            
        print("\nOutdated Plamo Packages")
        print("Pkg_name(dist_name)               cur_version     latest")
        print("-"*60)
        for i in pkg_outdated:
            tmp =f"{pkg_outdated[i][0]}({i})"
            print(f"{tmp:<32}  {pkg_outdated[i][1]:<12}   {pkg_outdated[i][2]:<12}")

        print("\nOutdated Pip Packages")
        print("-"*60)
        for i in pip_outdated:
            print(f"{i:<32}  {pip_outdated[i][1]:<12}   {pip_outdated[i][2]:<12}")
    else:
        print("Plamo Packages:")
        print(f"Pkg_name(dist_name)              version")
        print("-"*60)
        
        for i in sorted(pkg_names):
            tmp = f"{plamo_pkgs[i][0]}({i})"
            print(f"{tmp:<32} {plamo_pkgs[i][1]}")

        print(f"total:{len(pkg_names)}")
        print("")

        print("pip installed packages:")
        print(f"dist_name    version")
        print("-"*60)
        for i in sorted(from_pip):
            print(f"{i:<16} {pip_pkgs[i]}")
            
        print(f"total:{len(from_pip)}")

if __name__ == '__main__':
    main()
    

