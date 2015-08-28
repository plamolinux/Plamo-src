#! /usr/bin/python
# -*- coding: euc-jp -*-;

'''
get_depends.pyで作成した ~/depends.sql3 データベースを元に，
ELF形式のバイナリファイルが必要とする共有ライブラリを検索(正引き)したり，
共有ライブラリを使っているバイナリファイルを検索(逆引き)したりする．
-b, -p が正引きで，-b はファイルのベース名(例えば cat)のみを検索対象にする．
一方，-p ではファイルのパス名(/bin/cat)も検索対象にする．

-s, -r が逆引きで，-s が共有ライブラリのsoname(libuuid.so.1)から，
その共有ライブラリを使っているファイルを調べる．-r を指定すると
が共有ライブラリへのパス名(/usr/lib64/libuuid.so.1)も検索対象にする．
'''

import sqlite3, os, getopt, sys

def usage():
    print("Usage:")
    print(" {0} [-b name] [-p path ] [-s soname ] [-r realname]".format(sys.argv[0]))
    print("   ./depends.sql3 データベースを用いて，ライブラリの依存関係を調べる．")
    print("   -b name: name が含まれるELF形式のバイナリファイルが使う共有ライブラリを表示する")
    print("      -b cat とすれば /bin/cat だけでなく，bdftruncate や fc-cat もマッチする")
    print("      -b の場合，パス名は見ずに，ファイル名のみで検索する")
    print("   -p name: 検索の際にパス名も含めてマッチさせる．-p /bin/cat とすれば /bin/cat のみにマッチする")
    print("   -s soname: 共有ライブラリ soname を利用するバイナリファイルを表示する")
    print("      -s libgtk libgtk-3.so.0 や libgtk-x11-2.0.so もマッチする")
    print("      -s の場合，パス名は見ずに，共有ライブラリ名のみで検索する")
    print("   -r realname: 検索の際にライブラリのパス名も含める")

def get_opts():
    try:
        opts, args = getopt.gnu_getopt(sys.argv[1:], "b:p:s:r:", ["base=","path=","soname=", "realname="])
    except getopt.GetoptError:
        usage()
        sys.exit(2)

    for o, a in opts:
        if o in ("-b", "--base"):
            cmd = 'base'
            arg = a
        elif o in ("-p", "--path"):
            cmd = 'path'
            arg = a
        elif o in ("-s", "--soname"):
            cmd = 'soname'
            arg = a
        elif o in ("-r", "--realname"):
            cmd  = 'realname'
            arg = a
        else:
            assert False, "unhundled option"
            usage()
    
    # print("result:{0},{1}".format(cmd, arg))
    return (cmd, arg)

def query(db, cmd, arg):
    conn = sqlite3.connect(db)
    cur = conn.cursor()
    sql = 'select {0} from depends where {0} like "%{1}%" group by {0};'.format(cmd, arg)
    # print sql
    cur.execute(sql)
    tgt = []
    for i in cur:
        tgt.append(i[0])

    # print tgt
    for i in tgt:
        if cmd == 'base' or cmd == 'path' :
            print("{0} needs these libraries".format(i))
        else:
            print("{0} used by these binaries".format(i))

        sql = 'select * from depends where {0}="{1}";'.format(cmd, i)
        # print sql
        cur.execute(sql)
        for row in cur:
            (base, path, soname, realname) = row
            if cmd == 'base' or cmd == 'path' :
                print("  {0}({1})".format(soname, realname))
            else:
                print("  {0}({1})".format(base, path))
        print
def main():
    dbname = './depends.sql3'
    if os.access(dbname, os.R_OK) == False:
        print("cannot open database:{0}".format(dbname))

    (cmd, arg) = get_opts()
    query(dbname, cmd, arg)

if __name__ == "__main__":
    main()
