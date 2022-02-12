#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys, os, json, mbtextwrap
from string import Template

def get_alljson():
    pkginfo = '/home/ftp/pub/Plamo-7.x/Plamo-7.x-allpkgs.json'
    with open(pkginfo,'r') as f:
        dt = json.load(f)

    return(dt)

def get_categories():
    categories = '/home/ftp/pub/Plamo-7.x/categories.json'
    with open(categories,'r') as f:
        dt = json.load(f)

    return(dt)

def get_category_name(dir_path):
    dir_name = os.path.basename(dir_path)
    # print("dir_name:{}".format(dir_name))
    if dir_name.find(".txz") > 0:
        cat_name = dir_name.replace('.txz', '')
    elif dir_name.find("0") == 0 or dir_name.find("1") == 0 :
        d = dir_name.split('_')
        cat_name = d[1]
    else:
        cat_name = dir_name

    # print("path:{} cat_name:{}".format(dir_path, cat_name))
    return(cat_name)

def get_pkgs(tdir):
    files = os.listdir(tdir)
    pkgs = []
    for i in files:
        if i.find("txz") > 0 or i.find("tzst") > 0 :
            pkgs.append(i)

    return(pkgs)

def check_record(jsondt, basenames):
    result = True
    for i in basenames:
        if i not in jsondt:
            print("{} data not exists".format(i))
            result = False
    return(result)

def diskfile(tgtdir, lang, basenames, js_dt):
    ct_name = get_category_name(tgtdir)

    if lang == "J" :
        diskname = tgtdir + "/disk" + ct_name
        # diskname = "/tmp/disk"+ct_name
    else:
        diskname = tgtdir + "/edisk" + ct_name
        # diskname = "/tmp/edisk"+ct_name
        
    with open(diskname,'w') as f:
        print("CONTENTS: ", end="",file=f)
        for i in basenames:
            print("{} ".format(i),end="",file=f)
        print("",file=f)

        for i in basenames:
            if lang == "J" :
                try:
                    title = js_dt[i]['j_title']
                    desc = js_dt[i]['j_desc']
                except KeyError :
                    print("basename:{} j_title:{}".format(i, title))
                    sys.exit(1)
                
            else:
                title = js_dt[i]['e_title']
                desc = js_dt[i]['e_desc']
                
            desc_list = mbtextwrap.wrap(desc, width=60)
            print("{}: {}".format(i, title),file=f)
            print("{}:   ".format(i),file=f)
            for j in range(9):
                if j < len(desc_list) :
                    print("{}: {}".format(i, desc_list[j]),file=f)
                else:
                    print("{}:   ".format(i),file=f)

def tagfile(tgtdir, basenames):
    tagfile = tgtdir + "/tagfile"
    # tagfile = "/tmp/tagfile"
    with open(tagfile,'w') as f:
        for i in basenames:
            print("{}: ADD".format(i), file=f)

def maketag(tgtdir, lang, basenames, all_info):
    ct_name = get_category_name(tgtdir)

    categories = get_categories()
    ct_desc = categories[ct_name]

    if lang == "J" :
        title_str = "{}({})シリーズの選択".format(ct_name, ct_desc)
        list_str = "{}シリーズの中からインストールしたいパッケージを 選んでください．カーソルの上下キーで 対象を選択し，space キーでマーク(X)します． Enter キーでインストールを開始します．".format(ct_name)
        title = 'j_title'
        maketag = tgtdir + "/maketag"
        # maketag = "/tmp/maketag"

    else:
        title_str = "Select pkgs from {}({})".format(ct_name, ct_desc)
        list_str = "Select packages to install from {} series. Use cursor up/down to select the package, mark(*) by space key. Push Enter to start install.".format(ct_name)
        title = 'e_title'
        maketag = tgtdir + "/emaketag"
        # maketag = "/tmp/emaketag"

    list_lines = []
    for i in basenames[0:-1]:
        newline = "\"{}\" \"{}\" \"on\" \\\n".format(i, all_info[i][title])
        list_lines.append(newline)
    lastline = "\"{}\" \"{}\" \"on\" \\".format(basenames[-1], all_info[basenames[-1]][title])
    list_lines.append(lastline)
    pkg_lists = "".join(list_lines)
    pkg_name = " ".join(basenames)

    tmpl = '''#!/bin/sh
cat /dev/null > /tmp/SeTnewtag
dialog --title "$title" \
  --checklist "$list" 24 72 15 \
$lists
2> /tmp/SeTpkgs
if [ $$? = 1 -o $$? = 255 ]; then
  rm -f /tmp/SeTpkgs
  > /tmp/SeTnewtag
  for pkg in $pkgs  ; do 
  echo "$$pkg: SKP" >> /tmp/SeTnewtag
  done
  exit
fi
cat /dev/null > /tmp/SeTnewtag
for PACKAGE in $pkgs ; do
    if grep "$$PACKAGE" /tmp/SeTpkgs 1> /dev/null 2> /dev/null ; then
        echo "$$PACKAGE: ADD" >> /tmp/SeTnewtag
    else echo "$$PACKAGE: SKP" >> /tmp/SeTnewtag
    fi
done
rm -f /tmp/SeTpkgs
'''
    s = Template(tmpl)
    new = s.substitute(title=title_str, list=list_str, lists=pkg_lists, pkgs=pkg_name)
    with open(maketag,'w') as f:
        print(new, file=f)

# 書き出すファイル: tagfile, (e)maketag, (e)diskXXX

# TODO: 引数としてディレクトリを複数受けつける
# オプション？: -f force JSONデータ無くても作る

def get_tgtdir():
    import re

    if len(sys.argv) > 1:
        tdir = sys.argv[1]   # 複数も受けつけるべき？
    else:
        tdir = os.getcwd()

    if os.path.isdir(tdir) == False:
        print("directory {} is not exist.".format(tdir))
        sys.exit(1)

    tgtdir = re.sub(r'/$', '', tdir)
    print("tdir:{}, tgtdir:{}".format(tdir, tgtdir))

    return(tgtdir)

def main():

    tgtdir = get_tgtdir()
    print(tgtdir)
    all_info = get_alljson()
    pkgs = get_pkgs(tgtdir)
    basenames = []
    for i in pkgs:
        d = i.split('-')
        if d[0].find(".txz") > 0:
            dd = d[0].replace(".txz","")
            basenames.append(dd)
        else:
            basenames.append(d[0])

    if check_record(all_info, basenames) == False:
        print("Some packages doesn't have json data")
        sys.exit(1)

    basenames.sort()
    tagfile(tgtdir, basenames)
    for l in ['E', 'J'] : 
        diskfile(tgtdir, l, basenames, all_info)
        maketag(tgtdir, l, basenames, all_info)

if __name__ == "__main__" :
    dry_run = False
    main()
            
