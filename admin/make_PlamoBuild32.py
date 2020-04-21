#! /usr/bin/python3
# -*- coding: utf-8 -*-

import argparse, sys, os

class Package():
    def __init__(self, srcdir):
        self.srcdir = srcdir
        dirname = srcdir.split('/')[-1]
        parts = dirname.split('-')
        if len(parts) == 2:   # ex: bash-4.02
            self.basename = parts[0]
            self.version = parts[1]
        else:                 # ex: kde-baseapps-4.14.3
            self.basename = "_".join(parts[0:-1])
            self.version = parts[-1]

        self.readmes = ""
        self.patches = ""

    def get_method(self, method):
        self.method = 'none'
        if method != None :
            self.method = method
        else:
            files = os.listdir(self.srcdir)
            ''' 
            configure と CMakeLists.txt の双方がある場合，configure を
            優先した方が安全っぽい(多分，cmake への移行中)
            '''
            types = {'configure':'config', 'CMakeLists.txt':'cmake', 'meson.build':'meson', 'setup.py':'python', 'Makefile.PL':'perl'}

            for i in types.keys():
                for j in files:
                    if j == i:
                        self.method = types[i]
                        break
                if self.method != 'none':
                    break
            if self.method == 'none' :
                print("cannot find proper configure methods.")
                print("PlamoBuild script is setup for configure, but you should adjust build script manually")
                self.method = 'config'

    def make_header(self):
        if self.method == 'config' :
            opt_config = '--disable-static --enable-shared'
        elif self.method == 'cmake' :
            opt_config = '-DCMAKE_BUILD_TYPE=Release'
        else:
            opt_config = ''
        self.header = '''#!/bin/sh
##############################################################
pkgbase="lib32_{1}"
vers="{2}"
url="{0}"
verify=""
digest=""
arch="i686"
build=M1
src="{3}"
OPT_CONFIG="{6}"
DOCS="{4}"
patchfiles="{5}"
# specifies files that are not in source archive and patchfiles
addfiles=""
compress=txz
##############################################################
'''.format(self.url, self.basename, self.version, self.srcdir, self.readmes, self.patches, opt_config)

    def make_download(self):
        self.download = '''
source /usr/share/plamobuild_functions.sh
export CC='gcc -m32'
export CXX='g++ -m32'
export libdir='lib32'

# このスクリプトで使う1文字変数の意味
#
# $W : このスクリプトを動かすカレントディレクトリ
# $S : ソースコードのあるディレクトリ(デフォルト: $W/${src})
# $B : ビルド用ディレクトリ(デフォルト: /tmp/build)
# $P : ビルドしたファイルをインストールするディレクトリ（デフォルト: $W/work)

if [ $# -eq 0 ] ; then
  opt_download=0 ; opt_config=1 ; opt_build=1 ; opt_package=1
else
  opt_download=0 ; opt_config=0 ; opt_build=0 ; opt_package=0
  for i in $@ ; do
    case $i in
    download) opt_download=1 ;;
    config) opt_config=1 ;;
    build) opt_build=1 ;;
    package) opt_package=1 ;;
    esac
  done
fi
if [ $opt_download -eq 1 ] ; then
    download_sources
fi
'''

    def copy_source(self):
        self.config = '''
if [ $opt_config -eq 1 ] ; then

    for f in $addfiles $patchfiles
    do
        if [ ! -f $f ]; then
            echo "Required file ($f) is missing."
            exit 255
        fi
    done

######################################################################
#  source copy build. patch apply in build dir
######################################################################
    if [ -d $B ] ; then rm -rf $B ; fi ;  cp -a $S $B  
    cd $B
    for patch in $patchfiles ; do
       patch -p1 < $W/$patch
    done
    # if [ -f autogen.sh ] ; then
    #   sh ./autogen.sh
    # fi

    export PKG_CONFIG_PATH=/usr/${libdir}/pkgconfig:/usr/share/pkgconfig
    export LDFLAGS='-Wl,--as-needed' '''

    def not_copy_source(self):
        self.config = '''

if [ $opt_config -eq 1 ] ; then

    for f in $addfiles $patchfiles
    do
        if [ ! -f $f ]; then
            echo "Required file ($f) is missing."
            exit 255
        fi
    done

######################################################################
#  out of tree build. patch apply in src dir
######################################################################
    if [ -d $B ] ; then rm -rf $B ; fi ; mkdir -p $B 
    cd $S
    for patch in $patchfiles ; do
        if [ ! -f .${patch} ]; then
            patch -p1 < $W/$patch
            touch .${patch}
        fi
    done
    # if [ -f autogen.sh ] ; then
    #   sh ./autogen.sh
    # fi
    cd $B
    export PKG_CONFIG_PATH=/usr/${libdir}/pkgconfig:/usr/share/pkgconfig
    export LDFLAGS='-Wl,--as-needed' '''

    def make_config(self):
        if self.method == 'config' :
            if self.source == True :  # with source build
                self.copy_source()
                self.config += '''
    ./configure --prefix={} --libdir={}/${{libdir}} --sysconfdir=/etc --localstatedir=/var --mandir={}/share/man ${{OPT_CONFIG}}'''.format(self.prefix, self.prefix, self.prefix)
            else:     # out of source build
                self.not_copy_source()
                self.config += '''
    $S/configure --prefix={} --libdir={}/${{libdir}} --sysconfdir=/etc --localstatedir=/var --mandir={}/share/man ${{OPT_CONFIG}}'''.format(self.prefix, self.prefix, self.prefix)

        elif self.method == 'cmake' :
            self.not_copy_source()
            self.config += '''
    cmake -G Ninja -DCMAKE_INSTALL_PREFIX:PATH={} ${{OPT_CONFIG}} $S  '''.format(self.prefix)

        elif self.method == 'meson' :
            self.not_copy_source()
            self.config += '''
    meson --prefix={} --libdir={}/${{libdir}} ${{OPT_CONFIG}} $S  '''.format(self.prefix, self.prefix)

        elif self.method == 'python' :
            self.copy_source()
            self.config += '''
    python setup.py config    '''  # setup.py はinstall時にprefixを指定する

        elif self.method == 'perl' :
            self.copy_source()
            self.config += '''
    perl Makefile.PL INSTALL_BASE={}'''.format(self.prefix)

        self.config += '''
    if [ $? != 0 ]; then
        echo "configure error. $0 script stop"
        exit 255
    fi
fi
'''

    def make_build(self):
        self.build = '''
if [ $opt_build -eq 1 ] ; then
    cd $B '''

        if self.method == 'python':
            self.build += '''
    python setup.py build'''

        elif self.method == 'cmake' or self.method == 'meson' :
            self.build += '''
    ninja'''

        else:
            self.build += '''
    export LDFLAGS='-Wl,--as-needed'
    make -j3'''

        self.build += '''
    if [ $? != 0 ]; then
        echo "build error. $0 script stop"
        exit 255
    fi
fi
'''

    def make_package(self):
        self.package = '''
if [ $opt_package -eq 1 ] ; then
  check_root
  if [ -d $P ] ; then rm -rf $P ; fi ; mkdir -p $P
  cd $B
'''
        if self.method == 'python':
            self.package += '''
  python setup.py install --root $P --prefix={}'''.format(self.prefix)

        elif self.method == 'cmake' or self.method == 'meson' :
            self.package += '''
  DESTDIR=$P ninja install
'''
        else:
            self.package += '''
  export LDFLAGS='-Wl,--as-needed'
  make install DESTDIR=$P
  rm -rf $P/usr/{bin,include,share}
  rm -rf $P/etc
'''
        self.package += '''
################################
#      install tweaks
#  strip binaries, delete locale except ja, compress man,
#  install docs and patches, compress them and  chown root.root
################################
  install_tweak

#############################
#   convert symlink to null file and
#   add "ln -sf" command into install/doinst.sh
################################
  convert_links

  cd $P
  /sbin/makepkg ../$pkg.$compress <<EOF
y
1
EOF

fi
'''

def get_args():
    parser = argparse.ArgumentParser(description='PlamoBuild script maker')
    parser.add_argument("-p", "--prefix",  default="/usr", help='install directory prefix(default=/usr)')
    parser.add_argument("-u", "--url", default='input source code url here', help='source code download url')
    parser.add_argument("-m", "--method", help="force config method(config, cmake, meson,  perl, python)")
    parser.add_argument("-s", "--source", action="store_true", help="copy source codes into build directory(use with configure)")
    parser.add_argument("srcdir", help="source code directory")

    return parser.parse_args()

def main():
    params = get_args()
    pkg = Package(params.srcdir.strip('/'))

    if params.prefix != None :
        pkg.prefix = params.prefix
    if params.url != None :
        pkg.url = params.url
    if params.source != None :
        pkg.source = params.source

    pkg.get_method(params.method)
    pkg.make_header()
    pkg.make_download()
    pkg.make_config()
    pkg.make_build()
    pkg.make_package()

    script = pkg.header + pkg.download + pkg.config + pkg.build + pkg.package

    script_name = "PlamoBuild.lib32_" + params.srcdir.strip("/")
    if os.path.isfile(script_name) :
        print("same name Build script already exists. ")
        ans = input('Overwrite? [y/N]')
        if ans != "y" and ans != "Y" :
            sys.exit("not overwrited. exits")

    with open(script_name, 'w') as file:
        file.write(script)
    os.chmod(script_name, 0o755)

if __name__ == "__main__":
    main()
