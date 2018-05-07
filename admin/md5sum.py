#!/usr/bin/python

"""
Re-implementation of md5sum in python
"""

import sys, os, md5

def md5file(filename):
    """Return the hex digest of a file without loading it all into memory"""
    fh = open(filename)
    digest = md5.new()
    while 1:
        buf = fh.read(4096)
        if buf == "":
            break
        digest.update(buf)
    fh.close()
    return digest.hexdigest()

def md5sum(filename):
    try:
        print "%s  %s" % (md5file(filename), filename)
    except IOError, e:
        print >> sys.stderr, "Error on %s: %s" % (filename, e)

def get_list(path):
    files = os.listdir(path)
    files.sort()

    for i in files:
        if i.find('tgz') > 0:
            if os.path.isfile(path + '/' + i) == True:
                # normal package
                pkgname = i
                pathname = path
                md5sum(path + '/' + pkgname)

            elif os.path.isdir(path + '/' + i) == True:
                # sub directory
                newpath = path + '/' + i
                get_list(newpath)

# if __name__ == "__main__":
#     md5sum(sys.argv[1:])

# main part

basedir = sys.argv[1]
if os.path.isdir(basedir) != True:
    print basedir, "doesn't exit or it's not a directory"
    sys.exit()

get_list(basedir)


