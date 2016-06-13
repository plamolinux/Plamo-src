#!/bin/sh

######################################################################
url="http://archive.debian.org/debian/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q.orig.tar.gz
    http://archive.debian.org/debian/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-16.diff.gz"
pkgbase=tcp_wrappers
vers=7.6.q
arch=`uname -m`
build=P5
src=tcp_wrappers_7.6
OPT_CONFIG=""
DOCS="README BLURB DISCLAIMER CHANGES README.IRIX README.NIS"
######################################################################

fscheck() {
  PANGRAM="The quick brown fox jumps over the lazy dog."
  echo -n "Checking for the filesystem ... "
  mkdir pangram ; ( cd pangram ; touch $PANGRAM )
  mv pangram pangram~ ; mkdir pangram ; touch -r pangram~ pangram
  tar cpf pangram.tar pangram ; rmdir pangram ; mv pangram~ pangram
  for i in $PANGRAM ; do tar rpf pangram.tar pangram/$i ; done
  touch -t `date '+%m%d0900'` pangram.tar ; gzip pangram.tar
  touch pangram.tar.gz ; mv pangram.tar.gz pangram1.tgz
  tar cpf pangram.tar pangram
  touch -t `date '+%m%d0900'` pangram.tar ; gzip pangram.tar
  touch pangram.tar.gz ; mv pangram.tar.gz pangram2.tgz
  if cmp -s pangram1.tgz pangram2.tgz ; then
    echo "OK"
    rm -rf pangram pangram1.tgz pangram2.tgz
  else
    echo "NG"
    cat <<- "EOF"
	Hmm, packaging may not be done properly on this filesystem.
	Would you please try again on a default filesystem, thanks!
	
	Happy packaging!!
	
	Quitting...
	EOF
    exit
  fi
}

install2() {
  install -d ${2%/*} ; install -m 644 $1 $2
}

strip_bindir() {
  echo "compressing in $1"
  if [ -d $1 ] ; then (
    shopt -s nullglob
    cd $1
    for i in * ; do
      echo "$i"
      if [ -h $i ] ; then continue ; fi
      if [ -n "`file $i | grep "not stripped"`" ] ; then
         echo "stripping -p $i"
         strip -p $i
      fi
    done
  ) fi
}

strip_libdir() {
  echo "compressing in $1"
  if [ -d $1 ] ; then (
    shopt -s nullglob
    cd $1
    for i in *.so *.so.* *.a ; do
      echo "$i"
      if [ -h $i ] ; then continue ; fi
      if [ -n "`nm -a $i | grep " a "`" ] ; then
        if [ $i != ${i%.a} ] ; then
          echo -n "ranlib and "
          touch -r $i $i.mt ; ranlib $i ; touch -r $i.mt $i ; rm $i.mt
        fi
        echo "stripping -gp $i"
        strip -gp $i
      fi
    done
  ) fi
}

gzip_dir() {
  echo "compressing in $1"
  if [ -d $1 ] ; then (
    cd $1
    files=`ls -f --indicator-style=none | sed '/^\.\{1,2\}$/d'`
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

compress() {
  for i in {$P,$P/usr}/{sbin,bin} ; do strip_bindir $i ; done
  for i in {$P,$P/usr}/$libdir ; do strip_libdir $i ; done
  if [ -f $infodir/dir ] ; then rm -f $infodir/dir ; fi
  gzip_dir $infodir
  for i in `seq 9` n ; do gzip_dir $mandir/man$i ; done
}

prune_symlink() {
  echo "pruning symlink in $1"
  if [ -d $1 ] ; then (
    cd $P
    rm -f /tmp/iNsT-a.$$ ; touch /tmp/iNsT-a.$$
    for i in `find ${1#$P/} -type l` ; do
      target=`readlink $i`
      echo "$i -> $target"
      echo $i$'\n'$target >> /tmp/iNsT-a.$$
    done
    COUNT=1
    LINE=`sed -n "${COUNT}p" /tmp/iNsT-a.$$`
    while [ -n "$LINE" ] ; do
      LINKGOESIN=`dirname $LINE`
      LINKNAMEIS=`basename $LINE`
      COUNT=$(($COUNT + 1))
      LINKPOINTSTO=`sed -n "${COUNT}p" /tmp/iNsT-a.$$`
      if [ ! -d install ] ; then mkdir install ; fi
      cat <<- EOF >> install/doinst.sh
	( cd $LINKGOESIN ; rm -rf $LINKNAMEIS )
	( cd $LINKGOESIN ; ln -sf $LINKPOINTSTO $LINKNAMEIS )
	EOF
      rm -rf $LINE ; touch -t `date '+%m%d0900'` install/doinst.sh $LINE
      COUNT=$(($COUNT + 1))
      LINE=`sed -n "${COUNT}p" /tmp/iNsT-a.$$`
    done
    rm -f /tmp/iNsT-a.$$
  ) fi
}

convert() {
  for i in {$P,$P/usr}/{sbin,bin} ; do prune_symlink $i ; done
  for i in {$P,$P/usr}/$libdir ; do prune_symlink $i ; done
  prune_symlink $infodir
  for i in `seq 9` n ; do prune_symlink $mandir/man$i ; done
}

fscheck
W=`pwd`
for i in `seq 0 $((${#src[@]} - 1))` ; do
  S[$i]=$W/${src[$i]} ; B[$i]=$W/build`test ${#src[@]} -eq 1 || echo $i`
done
P=$W/work ; C=$W/pivot
infodir=$P/usr/share/info
mandir=$P/usr/share/man
docdir=$P/usr/share/doc
myname=`basename $0`
pkg=$pkgbase-$vers-$arch-$build
case $arch in x86_64) libdir=lib64 ;; *) libdir=lib ;; esac
if [ $# -eq 0 ] ; then
  opt_download=1 ; opt_config=1 ; opt_build=1 ; opt_package=1
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
    if [ ! -f ${i##*/} ] ; then
      wget $i ; j=${i%.*}
      for sig in asc sig{,n} {sha{256,1},md5}{,sum} ; do
        if wget --spider $i.$sig ; then wget $i.$sig ; break ; fi
        if wget --spider $j.$sig ; then
          case ${i##*.} in
          gz) gunzip -c ${i##*/} > ${j##*/} ;;
          bz2) bunzip2 -c ${i##*/} > ${j##*/} ;;
          xz) unxz -c ${i##*/} > ${j##*/} ;;
          esac
          touch -r ${i##*/} ${j##*/} ; i=$j ; wget $i.$sig ; break
        fi
      done
      if [ -f ${i##*/}.$sig ] ; then
        case $sig in
        asc|sig|sign) gpg2 --verify ${i##*/}.$sig ;;
        sha256|sha1|md5) ${sig}sum -c ${i##*/}.$sig ;;
        *) $sig -c ${i##*/}.$sig ;;
        esac
        if [ $? -ne 0 ] ; then echo "archive verify failed" ; exit ; fi
      fi
    fi
  done
  for i in $url ; do
    case ${i##*.} in
    tar) tar xvpf ${i##*/} ;;
    gz|tgz) tar xvpzf ${i##*/} ;;
    bz2|tbz) tar xvpjf ${i##*/} ;;
    xz|txz) tar xvpJf ${i##*/} ;;
    esac
  done
fi
if [ $opt_config -eq 1 ] ; then
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    if [ -d ${B[$i]} ] ; then rm -rf ${B[$i]} ; fi ; cp -a ${S[$i]} ${B[$i]}
  done
  cd $B
  gunzip -c $W/tcp-wrappers_7.6.q-16.diff.gz | patch -Np1 -i -
  for i in `cat debian/patches/series` ; do
    patch -Np1 -i debian/patches/$i
  done
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    cd ${B[$i]}
    if [ -f Makefile ] ; then
      make clean
    fi
    if [ -f config.log ] ; then
      rm -rf config.cache config.log
    fi
    if [ -x configure ] ; then
      ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
          --libdir='${exec_prefix}'/$libdir --infodir='${prefix}'/share/info \
          --mandir='${prefix}'/share/man ${OPT_CONFIG[$i]}
    fi
  done
fi
if [ $opt_build -eq 1 ] ; then
  for i in `seq 0 $((${#B[@]} - 1))` ; do
    cd ${B[$i]}
    if [ -f Makefile ] ; then
      make linux
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
    false && if [ -f Makefile ] ; then
      make install DESTDIR=$P
    fi
  done
  install -d $P/usr/sbin
  for i in tcpd tcpdmatch try-from safe_finger tcpdchk ; do
    install $i $P/usr/sbin
  done
  install -d $P/usr/$libdir
  install shared/libwrap.so.0.7.6 $P/usr/$libdir
  install -m 644 libwrap.a $P/usr/$libdir
  ln -s libwrap.so.0.7.6 $P/usr/$libdir/libwrap.so.0
  ln -s libwrap.so.0.7.6 $P/usr/$libdir/libwrap.so
  install -d $P/usr/include
  install -m 644 tcpd.h $P/usr/include
  install -d $mandir/man{3,5,8}
  install -m 644 hosts_access.3 $mandir/man3
  for i in hosts_access hosts_options ; do
    install -m 644 $i.5 $mandir/man5
  done
  for i in tcpd tcpdmatch try-from safe_finger tcpdchk ; do
    install -m 644 $i.8 $mandir/man8
  done
  install -d $P/etc
  cat <<- "EOF" > $P/etc/hosts.allow.new
	#
	# hosts.allow	This file describes the names of the hosts which are
	#		allowed to use the local INET services, as decided by
	#		the '/usr/sbin/tcpd' server.
	#
	# Version:	@(#)/etc/hosts.allow	1.00	05/28/93
	#
	# Author:	Fred N. van Kempen, <waltje@uwalt.nl.mugnet.org
	#
	#
	ALL : LOCAL
	# End of hosts.allow.
	EOF
  cat <<- "EOF" > $P/etc/hosts.deny.new
	#
	# hosts.deny	This file describes the names of the hosts which are
	#		*not* allowed to use the local INET services, as decided
	#		by the '/usr/sbin/tcpd' server.
	#
	# Version:	@(#)/etc/hosts.deny	1.00	05/28/93
	#
	# Author:	Fred N. van Kempen, <waltje@uwalt.nl.mugnet.org
	#
	#
	ALL : ALL EXCEPT LOCAL
	# End of hosts.deny.
	EOF
  touch $W/i.et
  cd $W
  find $P ! -type l -newer i.st ! -newer i.et \
      -exec touch -t `date '+%m%d0900'` {} \;
  compress
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
      touch -t `date '+%m%d0900'` $docdir/$src/$myname
      gzip_one $docdir/$src/$myname
    else
      ln $docdir/$src/$myname.gz $docdir/${src[$i]}
    fi
    ( cd $docdir ; find ${src[$i]} -type d -exec touch -r $W/{} {} \; )
  done
  convert
  cat <<- "EOF" >> $P/install/doinst.sh
	
	hosts_config() {
	  mv etc/hosts.$1.new /tmp
	  if [ -f etc/hosts.$1 ] ; then
	    mv /tmp/hosts.$1.new etc/hosts.$1.dist
	  else
	    mv /tmp/hosts.$1.new etc/hosts.$1
	  fi
	}
	
	for i in allow deny ; do hosts_config $i ; done
	EOF
  touch -t `date '+%m%d0900'` $P/install/doinst.sh
  tar cvpf $pkg.tar -C $P `cd $P ; find usr/sbin | tail -n+2`
  tar rvpf $pkg.tar -C $P `cd $P ; find usr/$libdir | tail -n+2`
  tar rvpf $pkg.tar -C $P `cd $P ; find usr/include | tail -n+2`
  tar rvpf $pkg.tar -C $P `cd $P ; find etc | tail -n+2`
  tar rvpf $pkg.tar -C $P `cd $P ; find usr/share/man/man3 | tail -n+2`
  tar rvpf $pkg.tar -C $P `cd $P ; find usr/share/man/man5 | tail -n+2`
  tar rvpf $pkg.tar -C $P `cd $P ; find usr/share/man/man8 | tail -n+2`
  tar rvpf $pkg.tar -C $P usr/share/doc/$src
  tar rvpf $pkg.tar -C $P install/doinst.sh
  touch -t `date '+%m%d0900'` $pkg.tar ; xz $pkg.tar ; touch $pkg.tar.xz
  mv $pkg.tar.xz $pkg.txz
  read -p "Do you want to keep work files? [y/N] " ans
  if [ "x$ans" != "xY" -a "x$ans" != "xy" ] ; then rm -rf $P $C i.[se]t ; fi
fi
