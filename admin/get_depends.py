#! /usr/bin/python
# -*- coding: euc-jp -*-;

'''
バイナリファイルのありそうなディレクトリ(search_dirs(['/bin', '/lib', 
'/lib64', '/sbin', '/usr', '/opt']))以下にあるバイナリファイル
(file コマンドで ELF, dynamically linked を
返すファイル)について，lddした結果をデータベース ./depends.sql3 に
記録する．root権限でしか読めないファイルもあるので，sudo で実行することが望ましい．

./depends.sql3 には depends というテーブルがあり，そのテーブルの構造は
(base text, path text, soname text, realname text) となっている．
  base ： バイナリファイルのベース名(パス無し)，
  path ： base へのパス
  soname : 必要とする共有ライブラリのsoname
  realname : 上記ライブラリのパス名付きの名前

一つのベース名(例えば cat)に対して，path は一つ(/bin/cat)だが，
複数のsoname とrealname が必要となるので，データベースにはこのように並んでいる
 cat|/bin/cat|linux-vdso.so.1|none
 cat|/bin/cat|libc.so.6|/lib64/libc.so.6
 cat|/bin/cat|/lib64/ld-linux-x86-64.so.2|/lib64/ld-linux-x86-64.so.2

ファイルの更新(古いライブラリの削除)を追跡する方法が無いので，データベースを更新するには
古いファイル(./depends.sql3)を削除して，再度このコマンドを実行すること．
'''

import sqlite3, os, subprocess, sys, time

def init_db(dbname):
    conn = sqlite3.connect(dbname)
    conn.execute('''create table depends
       (base text, path text, soname text, realname text)''')
    conn.close

def insert_db(dbname, t):
    conn = sqlite3.connect(dbname)
    try:
        print "inserting ", t
        conn.execute('insert into depends values(?, ?, ?, ?)', t)
        conn.commit()
    except sqlite3.Error, e:
        print "An error occurred:", e.args[0]
        conn.rollback()

def get_elfs(path):
    exclude_dirs = ['include', 'etc', 'src', 'share', 'texmf', 'var', 'tmp', '/lib/modules' ]
    test = os.walk(path,followlinks=False)
    elfs = []
    for root, dirs, files in test:
        ex = False
        for exclude in exclude_dirs:
            if root.find(exclude) != -1:
                ex = True
                break

        if ex == False:
            for i in files:
                path = os.path.join(root,i)
                if os.path.islink(path) == False:
                    if check_elf(path) :
                        print("{0} is ELF".format(path))
                        elfs.append(path)
    return elfs

def check_elf(file):
    res = subprocess.check_output(['file', file])
    if res.find('ELF') > 0 and res.find('dynamically linked') > 0 and res.find('32-bit') == -1: 
        return True
    else:
        return False

def get_depends(file):
    list = []
    try:
        res = subprocess.check_output(['ldd', file])
        tmp = res.splitlines()
        for i in tmp:
            list.append(i.lstrip())

    except subprocess.CalledProcessError:
        print("error occured to ldd {0}. maybe different archs?".format(file))

    return list

def split_parts(l):
    (soname, sep, last) = l.partition(' => ')
    if soname == 'linux-vdso.so.1' :
        realname = 'none'
    elif soname.find('ld-linux') > 0:
        (t1, t2, t3) = soname.partition(' (')
        soname = t1
        realname = soname
    else:
        (realname, sep, last2) = last.partition(' (')
    
    return (soname, realname)
    
def main():
    
    dbname = './depends.sql3'
    if os.access(dbname, os.R_OK) == False:
        c = init_db(dbname)

    # lastflag = './lastchecked'
    # last_checked = get_lastchecked(lastflag)
    # print("last_checked:", time.ctime(last_checked))

    # search_dirs = ['/bin', '/etc', '/lib', '/lib64', '/opt', '/sbin', '/usr']
    search_dirs = ['/bin',  '/lib', '/lib64', '/sbin', '/usr', '/opt']

    for dir in search_dirs:
        print("searching {0}".format(dir))
        files = get_elfs(dir)
        list = []
        for file in files:
            base = os.path.basename(file)
            tmp = get_depends(file)
            for i in tmp:
                (soname, realname) = split_parts(i)
                print("{0}, {1}, {2}, {3}".format(base, file, soname, realname))
                t = (base, file, soname, realname)
                list.append(t)
            
        conn = sqlite3.connect(dbname)
        conn.executemany('insert into depends values(?, ?, ?, ?)', list)
        conn.commit()

if __name__ == "__main__":
    main()

