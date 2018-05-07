#!/usr/bin/python
# -*- coding: euc-jp -*-;

import sys, os, tarfile, time

def print_pkginfo(pkg):
    if os.access(pkg, os.R_OK) == False:
        print "cannot access to ", pkg
        return

    tgzfile = tarfile.open(pkg, 'r:gz')
    # print pkg
    tgzfile.list(verbose = True)


def printout(pathname, pkgname):
    print "+--------------------------------------------------"
    print "+  %s/%s"%(pathname, pkgname)
    print "+--------------------------------------------------"
    print_pkginfo(pathname + '/' + pkgname)

def get_list(path):
    files = os.listdir(path)
    files.sort()

    for i in files:
        if i.find('tgz') > 0:
            if os.path.isfile(path + '/' + i) == True:
                # normal package
                pkgname = i
                pathname = path
                printout(pathname, pkgname)

            elif os.path.isdir(path + '/' + i) == True:
                # sub directory
                newpath = path + '/' + i
                get_list(newpath)

# main part

basedir = sys.argv[1]
if os.path.isdir(basedir) != True:
    print basedir, "doesn't exit or it's not a directory"
    sys.exit()

get_list(basedir)

