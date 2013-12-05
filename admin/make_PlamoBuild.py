#! /usr/bin/python
# -*- coding: euc-jp -*-;

import getopt, sys, os, tarfile

def usage():
    print "Usage:"
    print sys.argv[0],": make PlamoBuild script for archive file or source tree(directory","\n"
    print sys.argv[0],"[-hv] [-t type] <archive_file | directory>"
    print "          -h, --help : help(show this message)"
    print "          -v, --verbose : verbose(not implemented yet)"
    print "          -u, --url= : source code url(need citation)"
    print "          -t, --type= : select script type. Script types are follows:"
    print "                KDE : for KDE package(set --prefix to /opt/kde)"
    print "                  otherwise --prefix is /usr"
    print "  archive_file is a source archive in tar.gz or tar.bz2 format"
    print "  directory is a source code directory"

    print " example: ", sys.argv[0], "myprogs.tar.bz2"
    print "          ", sys.argv[0], "mycode_directory"

    sys.exit(2)

def get_parms():
    try:
        opts, args = getopt.getopt(sys.argv[1:], "hvt:u:", ["help", "verbose", "type=", "url="])
    except getopt.GetoptError:
        usage()
        sys.exit(2)

    result = [opts, args]
    return result

def tar_expand(archive):
    tar = tarfile.open(archive, 'r')
    for i in tar:
        tar.extract(i)

def tar_top(archive):
    tar = tarfile.open(archive, 'r')
    (dirname, trash) = archive.split('.tar')
    print "in tar_top, dirname = ", dirname
    tarlist = []
    for i in tar:
        tarlist.append(i.name)
    
    return tarlist[0]

def get_readmes(files):
    keywords = ['ABOUT', 'AUTHOR', 'COPYING', 'CHANGELOG', 'HACKING', 'HISTORY', 'INSTALL', 'LICENSE', 'LSM', 'MAINTAINERS', 'NEWS', 'README', 'RELEASE', 'THANKS', 'THANKYOU', 'TODO',  'TXT']
    exceptions = ['CMakeLists.txt', 'install-sh', 'mkinstalldirs', 'install.sh', '.in']

    tmplist = []
    newlist = [];
    for i in files:
        check = i.upper()
        for j in keywords:
            if check.find(j) >= 0:
                tmplist.append(i)
                break

    for i in tmplist:
        match = False
        for j in exceptions:
            if i.find(j) >= 0:
                match = True
                break
                
        if match == False:
            newlist.append(i)
                
    return newlist

def get_patchfiles(files):
    keywords = ['PATCH', 'DIFF']
    patchlist = []
    for i in files:
        check = i.upper()
        for j in keywords:
            if check.find(j) >= 0:
                patchlist.append(i)

    return patchlist

def make_headers(url, filename, vers, readme, patchfiles):
    pkgname = filename.replace('-', '_')
    readme.sort()
    docs = " ".join(readme)
    patchs = " ".join(patchfiles)
    header = '''#!/bin/sh
##############################################################
url=%s
verify=
pkgbase=%s
vers=%s
commitid=
# arch=x86_64
# arch=i586
arch=`uname -m | sed -e 's/i.86/i586/'`
build=P1
src=%s-%s
OPT_CONFIG=''
DOCS='%s'
patchfiles='%s'
compress=txz
##############################################################
''' % (url, pkgname, vers, filename, vers, docs, patchs)
    return header


def make_body1():
    body='''
install2() {
  install -d ${2%/*} ; install -m 644 $1 $2
}

strip_all() {
  for chk in `find . ` ; do
    chk_elf=`file $chk | grep ELF`
    if [ "$chk_elf.x" != ".x" ]; then
      chk_lib=`echo $chk | grep lib`
      if [ "$chk_lib.x" != ".x" ]; then
        echo "stripping $chk with -g "
        strip -g $chk
      else
        echo "stripping $chk"
        strip $chk
      fi
    fi
  done
}

gzip_dir() {
  echo "compressing in $1"
  if [ -d $1 ] ; then (
    cd $1
    files=`ls -f --indicator-style=none | sed '/^\.\{1,2\}$/d'`
    # files=`ls -a --indicator-style=none | tail -n+3`
    for i in $files ; do
      echo "$i"
      if [ ! -f $i -a ! -h $i -o $i != ${i%.gz} ] ; then continue ; fi
      lnks=`ls -l $i | awk '{print $2}'`
      if [ $lnks -gt 1 ] ; then
        inum=`ls -i $i | awk '{print $1}'`
        for j in `find . -maxdepth 1 -inum $inum` ; do
          if [ ${j#./} == $i ] ; then
            gzip -f $i
          else
            rm -f ${j#./} ; ln $i.gz ${j#./}.gz
          fi
        done
      elif [ -h $i ] ; then
        target=`readlink $i` ; rm -f $i ; ln -s $target.gz $i.gz
      else
        gzip $i
      fi
    done
    for i in $files ; do mv ${i%.gz}.gz $C ; done
    for i in $files ; do mv $C/${i%.gz}.gz . ; done
  ) fi
}

gzip_one() {
  gzip $1 ; mv $1.gz $C ; mv $C/${1##*/}.gz ${1%/*}
}

compress_all() {
  cd $P
  strip_all
}  

verify_checksum() {
  echo "Verify Checksum..."
  checksum_command=$1
  verify_file=${verify##*/}
  for s in $url ; do
    srcsum=`$checksum_command ${s##*/}`
    verifysum=`grep ${s##*/} $verify_file`
    if [ x"$srcsum" != x"$verifysum" ]; then
      return 1
    fi
  done
  return 0
}

W=`pwd`
for i in `seq 0 $((${#src[@]} - 1))` ; do
  S[$i]=$W/${src[$i]} 
  if [ $arch = "x86_64" ]; then
    B[$i]=$W/build`test ${#src[@]} -eq 1 || echo $i`
  else
    B[$i]=$W/build32`test ${#src[@]} -eq 1 || echo $i`
  fi      
done
P=$W/work ; C=$W/pivot
infodir=$P/usr/share/info
mandir=$P/usr/share/man
xmandir=$P/usr/X11R7/share/man
docdir=$P/usr/share/doc
myname=`basename $0`
pkg=$pkgbase-$vers-$arch-$build

if [ $arch = "x86_64" ]; then
  target="-m64"
  libdir="lib64"
  suffix="64"
else
  target="-m32"
  libdir="lib"
  suffix=""
fi

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
  for i in $url ; do
    case ${i##*.} in
    git)
      if [ ! -d `basename ${i##*/} .git` ] ; then
        git clone $i
      else
        ( cd `basename ${i##*/} .git` ; git pull origin master )
      fi
      ;;
    *)
      if [ ! -f ${i##*/} ] ; then
        wget $i
      fi
      ;;
    esac
  done
  for i in $verify ; do
    if [ ! -f ${i##*/} ] ; then
      wget $i
    fi
  done
  for i in $verify ; do
    case ${i##*.} in
    asc) gpg2 --verify ${i##*/} ;;
    sig) gpg2 --verify ${i##*/} ;;
    sha256sum) verify_checksum "sha256sum" ;;
    esac
    if [ $? -ne 0 ]; then
      echo "archive verify was failed."
      exit 1
    else
      echo "archive verify was successed."
    fi
  done
  for i in $url ; do
    case ${i##*.} in
    gz) tar xvpzf ${i##*/} ;;
    bz2) tar xvpjf ${i##*/} ;;
    git) ( cd `basename ${i##*/} .git`
        git checkout origin/master
        if [ -n "$commitid" ] ; then
          git reset --hard $commitid
        fi
        git set-file-times ) ;;
    *) tar xvpf ${i##*/} ;;
    esac
  done
fi
'''
    return body

def make_config(type):
    if type == "usr":
        config = '''
if [ $opt_config -eq 1 ] ; then
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    if [ -d ${B[$i]} ] ; then rm -rf ${B[$i]} ; fi ; cp -a ${S[$i]} ${B[$i]}
  done
######################################################################
# * ./configure を行う前に適用したい設定やパッチなどがある場合はここに
#   記述します。
######################################################################
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    cd ${B[$i]}
    for patch in $patchfiles ; do
      patch -p1 < $W/$patch
    done

    # if [ -f autogen.sh ] ; then
    #   sh ./autogen.sh
    # fi

    if [ -x configure ] ; then
      export PKG_CONFIG_PATH=/usr/${libdir}/pkgconfig:/usr/share/pkgconfig:/opt/kde/${libdir}/pkgconfig
      export LDFLAGS='-Wl,--as-needed' 
      export CFLAGS="-isystem /usr/include $target" 
      export CPPFLAGS="-isystem /usr/include $target "
      ./configure --prefix=/usr --libdir=/usr/${libdir} --sysconfdir=/etc --localstatedir=/var --mandir='${prefix}'/share/man ${OPT_CONFIG[$i]}
    fi'''
    elif type == "KDE":
        config = '''
if [ $opt_config -eq 1 ] ; then
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    if [ -d ${B[$i]} ] ; then rm -rf ${B[$i]} ; fi ; mkdir -p ${B[$i]}
  done
######################################################################
# * ./configure を行う前に適用したい設定やパッチなどがある場合はここに
#   記述します。
######################################################################
  for i in `seq 0 $((${#S[@]} - 1))` ; do
    cd $S
    for patch in $patchfiles ; do
      if [ ! -f ".$patch" ]; then
        patch -p1 < $W/$patch
        touch ".$patch"
      fi
    done

    cd $B
    if [ -f $S/CMakeLists.txt ]; then
      export PKG_CONFIG_PATH=/opt/kde/${libdir}/pkgconfig:/usr/${libdir}/pkgconfig:/usr/share/pkgconfig
      export LDFLAGS='-Wl,--as-needed' 
      export CC="gcc -isystem /usr/include $target" 
      export CXX="g++ -isystem /usr/include $target"
      cmake -DCMAKE_INSTALL_PREFIX:PATH=/opt/kde -DLIB_INSTALL_DIR:PATH=/opt/kde/${libdir} -DLIB_SUFFIX=$suffix ${OPT_CONFIG} $S
    fi'''

    return config

def make_body2():
    body='''
    if [ $? != 0 ]; then
      echo "configure error. $0 script stop"
      exit 255
    fi
  done
fi
if [ $opt_build -eq 1 ] ; then
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    cd ${B[$i]}
    if [ -f Makefile ] ; then
      export LDFLAGS='-Wl,--as-needed'
      make -j3
    fi
  done
fi
if [ $opt_package -eq 1 ] ; then
  if [ `id -u` -ne 0 ] ; then
    read -p "Do you want to package as root? [y/N] " ans
    if [ "x$ans" == "xY" -o "x$ans" == "xy" ] ; then
      cd $W ; /bin/su -c "$0 package" ; exit
    fi
  fi
  if [ -d $P ] ; then rm -rf $P ; fi ; mkdir -p $P
  if [ -d $C ] ; then rm -rf $C ; fi ; mkdir -p $C
  touch $W/i.st ; sleep 1
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    cd ${B[$i]}
    for mk in `find . -name "[Mm]akefile" ` ; do
      sed -i -e 's|GCONFTOOL = /usr/bin/gconftool-2|GCONFTOOL = echo|' $mk
    done
    if [ -f Makefile ] ; then
      export LDFLAGS='-Wl,--as-needed'
      make install DESTDIR=$P
    fi
  done
######################################################################
# * make install でコピーされないファイルがある場合はここに記述します。
######################################################################
  mkdir -p $docdir/$src
  if [ -d $P/usr/share/omf ]; then
    mkdir -p $P/install
    for omf in $P/usr/share/omf/* ; do
      omf_name=`basename $omf`
      cat << EOF >> $P/install/initpkg
if [ -x /usr/bin/scrollkeeper-update ]; then
  scrollkeeper-update -p /var/lib/rarian -o /usr/share/omf/$omf_name
fi
EOF
    done
  fi

  if [ -d $P/etc/gconf/schemas ]; then
    mkdir -p $P/install
    for schema in $P/etc/gconf/schemas/* ; do
      cat << EOF >> $P/install/initpkg
if [ -x /usr/bin/gconftool-2 ]; then
  ( cd /etc/gconf/schemas ; GCONF_CONFIG_SOURCE=xml:merged:/etc/gconf/gconf.xml.defaults /usr/bin/gconftool-2 --makefile-install-rule `basename $schema` )
fi
EOF
    done
  fi

# remove locales except ja
# 
  for loc_dir in `find $P -name locale` ; do
    pushd $loc_dir
    for loc in * ; do
      if [ "$loc" != "ja" ]; then
        rm -rf $loc
      fi
    done
    popd
  done      

######################################################################
# path に lib があるバイナリは strip -g, ないバイナリは strip する
######################################################################
  cd $P
  compress_all
  if [ -d $P/usr/share/man ]; then
    for mdir in `find $P/usr/share/man -name man[0-9mno] -type d`; do
      gzip_dir $mdir
    done
  fi
######################################################################
# * compress 対象以外で圧縮したいディレクトリやファイルがある場合はここ
#   に記述します(strip_{bin,lib}dir や gzip_{dir,one} を使います)。
# * 他のアーカイブから追加したいファイルがある場合はここに記述します。
######################################################################
  cd $W
  for i in `seq 0 $((${#DOCS[@]} - 1))` ; do
    for j in ${DOCS[$i]} ; do
      for k in ${S[$i]}/$j ; do
        install2 $k $docdir/${src[$i]}/${k#${S[$i]}/}
        touch -r $k $docdir/${src[$i]}/${k#${S[$i]}/}
        gzip_one $docdir/${src[$i]}/${k#${S[$i]}/}
      done
    done
    if [ $i -eq 0 ] ; then
      install $myname $docdir/$src
      gzip_one $docdir/$src/$myname
    else
      ln $docdir/$src/$myname.gz $docdir/${src[$i]}
    fi
    ( cd $docdir ; find ${src[$i]} -type d -exec touch -r $W/{} {} \; )
  done

  for patch in $patchfiles ; do
    cp $W/$patch $docdir/$src/$patch
    gzip_one $docdir/$src/$patch
  done

############################################################
#   /usr/share/doc 以下には一般ユーザのIDのままのファイルが
#   紛れこみがちなので
############################################################

  chk_me=`whoami | grep root`
  if [ "$chk_me.x" != ".x" ]; then
    chown -R root.root $P/usr/share/doc
  fi

######################################################################
# * convert 対象以外で刈り取りたいシンボリックリンクがある場合はここに
#   記述します(prune_symlink を使います)。
# * 完成した作業ディレクトリから tar イメージを作成する手順を以降に記述
#   します(こだわりを求めないなら単に makepkg でも良いです)。
######################################################################
# tar cvpf $pkg.tar -C $P `cd $P ; find usr/bin | tail -n+2`
# tar rvpf $pkg.tar -C $P `cd $P ; find usr/share/man/man1 | tail -n+2`
# tar rvpf $pkg.tar -C $P usr/share/doc/$src
# touch -t `date '+%m%d0900'` $pkg.tar ; gzip $pkg.tar ; touch $pkg.tar.gz
# mv $pkg.tar.gz $pkg.tgz
  cd $P
  /sbin/makepkg ../$pkg.$compress <<EOF
y
1
EOF

fi
'''
    return body

###########

def main():
    opts, filelist = get_parms()

    verbose = False
    type = "usr"
    url = "'input sourcecode url here'"
    for o, a in opts:
        if o == "-v":
            verbose = True
        elif o in ("-h", "--help"):
            usage()
        elif o in ("-t", "--type"):
            type = a
        elif o in ("-u", "--url"):
            url = "'" + a + "'"

    filetmp = filelist[0]
    file = filetmp.rstrip("/")
    if file.find('.tar') >= 0:
        archive = os.path.basename(file)
        if verbose == True:
            print "unpacking :", archive
        tar_expand(archive)

# tmpname = tar_top(archive)
        (dirname, trash) = archive.split('.tar')
        print "dirname = ", dirname
    elif os.path.isdir(file) == True:
        dirname = file
    elif len(sys.argv) == 1:
        files = os.listdir('.')
        for i in files:
            if i.find('.tar') >= 0:
                archive = i
                break
            tar_expand(archive)
            (dirname, trash) = archive.split('.tar')
            if verbose == True:
                print "dirname = ", dirname
        else:
            usage()

    listparts = dirname.split('-')
    vers = listparts[-1]

    if verbose == True:
        print "version:", vers

    fileparts = listparts[0:len(listparts)-1]
    filename = '-'.join(fileparts)
    pkgname = filename.replace('-', '_')

    if verbose == True:
        print "filename, pkgname:", filename, pkgname

# newfiles = os.listdir(dirname)
    READMEs = get_readmes(os.listdir(dirname))
    patches = get_patchfiles(os.listdir(os.getcwd()))
    if verbose == True:
        print "patches:", patches

   # url = 'ftp://ftp.kddlabs.co.jp/pub/GNOME/desktop/2.26/2.26.2/sources/'+filename+'-'+vers+'.tar.bz2'
    header = make_headers(url, filename, vers, READMEs, patches)
    body1 = make_body1()
    config = make_config(type)
    body2 = make_body2()
    body = body1 + config + body2

    scriptname = 'PlamoBuild.' + dirname
    print "making %s ..." % scriptname

    out = open(scriptname, 'w')
    out.write(header)
    out.write(body)
    out.close()

    os.chmod(scriptname, 0o755)

#for i in dt.splitlines():
#    print i

if __name__ == "__main__":
    main()
