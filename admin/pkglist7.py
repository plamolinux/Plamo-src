#!/usr/bin/python
# -*- coding: utf-8 -*-

import os, pickle

basedir = './'
archdir = ('x86_64',)
channel = ('plamo', 'contrib')

'''
__blockpkgs: updatepkg だけでアップデートできないパッケージは，デフォル
トでは表示しないようにする．
ただし get_pkginfo.py で -b オプションを指定すれば，これらも合わせて表
示される．
'''
blockpkgs = ['aaa_base',  'etc' ]

'''
__replaces: 改名，分割，集約されたパッケージを追跡するために，旧パッケ
ージ名を新パッケージ名にマップする．
ex: 'tamago' -> 'tamago_tsunagi'
    'python' -> 'Python2', 'Python3' -> 'Python'

replace_list = {'tamago': 'tamago_tsunagi', 'python': 'Python2',
        'Python3': 'Python', 'pycups2': 'py2cups', 'pycurl2': 'py2curl'}
'''

replace_list = {}

'''
__no_install: これらのパッケージは updatepkg -f 以外の作業が必要になる
ので，ダウンロードはできるが自動インストールはしない．
'''
no_install = ['grub']

old_dir = os.getcwd()
for arch in archdir:
    os.chdir(arch)
    allpkgs= {}
    allpkgs['__blockpkgs'] = blockpkgs
    allpkgs['__replaces'] = replace_list
    allpkgs['__no_install'] = no_install
    for ch in channel:
        # print("ch:{}".format(ch))
        pkg_path = './{}/'.format(ch)
        for root, dirs, files in os.walk(pkg_path):
            if 'old' in dirs:
                dirs.remove('old')
            for i in files:
                if '.txz' in i or '.tgz' in i or '.tzst' in i :
                    # print(i)
                    (base, vers, p_arch, tmp) = i.split('-')
                    (build, ext) = tmp.split('.')
                    path = root.replace(basedir, '')
                    # path = root
                    # print("vers:{}, p_arch:{}, build:{}, ext:{}, path:{}".format(vers, p_arch, build, ext, path))
                    allpkgs[base] = (vers, p_arch, build, ext, path)
    with open('allpkgs.pickle', 'wb') as f:
        pickle.dump(allpkgs, f)
    # print(allpkgs)
    os.chdir(old_dir)
    
