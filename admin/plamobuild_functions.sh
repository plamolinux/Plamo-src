verify_signature() {
  i=$1 ; j=${i%.*}
  if [ -n "$2" ] ; then
    sigfile=${2##*/}    # signature or digest file
    sig=${2##*.}        # suffix of $sigfile
    if [ "$sigfile" != "${i##*/}.$sig" ] ; then
      case ${i##*.} in
      gz) gunzip -c ${i##*/} > ${j##*/} ;;
      bz2) bunzip -c ${i##*/} > ${j##*/} ;;
      xz) unxz -c ${i##*/} > ${j##*/} ;;
      esac
      touch -r ${i##*/} ${j##*/}
    fi
    wget $2
  else
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
    sigfile=${i##*/}.$sig
  fi
  if [ -f $sigfile ] ; then
    case $sig in
    asc|sig|sign) gpg2 --verify $sigfile ;;
    sha256|sha1|md5) ${sig}sum -c $sigfile ;;
    *) $sig -c $sigfile ;;
    esac
    if [ $? -ne 0 ] ; then echo "archive verify failed" ; exit ; fi
  fi
}

download_sources() {
  url=($url)
  for i in `seq 0 $((${#url[@]} - 1))` ; do
    j=${url[$i]}
    case ${j##*.} in
    git) if [ ! -d `basename ${j##*/} .git` ] ; then git clone $j ; else
        ( cd `basename ${j##*/} .git` ; git pull origin master ) ; fi ;;
    *) if [ ! -f ${j##*/} ] ; then wget $j
        verify_signature $j ${verify[$i]} ; fi ;;
    esac
  done
  if [ -f gitlog2changelog ] ; then
    if [ ! -x gitlog2changelog ] ; then chmod +x gitlog2changelog ; fi
    PATH=$W:$PATH
  fi
  for i in `seq 0 $((${#url[@]} - 1))` ; do
    j=${url[$i]}
    case ${j##*.} in
    tar) tar xvpf ${j##*/} ;;
    gz|tgz) tar xvpzf ${j##*/} ;;
    bz2|tbz) tar xvpjf ${j##*/} ;;
    xz|txz) tar xvpJf ${j##*/} ;;
    zip) unzip ${j##*/} ;;
    git) ( cd `basename ${j##*/} .git`
        git checkout origin/master ; git reset --hard ${commitid[$i]:-HEAD}
        git set-file-times ; TZ=UTC gitlog2changelog) ;;
    esac
  done
}

check_root() {
  if [ `id -u` -ne 0 ] ; then
    read -p "Do you want to package as root? [y/N] " ans
    if [ "$ans" == "Y" -o "$ans" == "y" ] ; then
      cd $W ; /bin/su -c "$0 package" ; exit
    fi
  fi
}

install2() {
  install -d ${2%/*} ; install -m 644 $1 $2
}

strip_all() {
  for i in `find $P` ; do
    if [ -n "`file $i | grep "ELF"`" ] ; then
      if [ -z "`grep "$libdir" $i`" ] ; then
        echo "stripping $i with -p"
        strip -p $i
      else
        echo "stripping $i with -gp"
        strip -gp $i
      fi
    fi
  done
}

gzip_dir() {
  echo "compressing in $1"
  if [ -d $1 ] ; then (
    cd $1
    files=`ls -f --ind=n | sed '/^\.\{1,2\}$/d'`
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

convert_links() {
  for i in {$P,$P/usr}/{sbin,bin} ; do prune_symlink $i ; done
  for i in {$P,$P/usr}/$libdir ; do prune_symlink $i ; done
  prune_symlink $infodir
  for i in `seq 9` n ; do prune_symlink $mandir/man$i ; done
}

# various adjustment after install
install_tweak() {
  if [ -d $C ] ; then rm -rf $C ; fi ; mkdir -p $C
  # strip binary files
  strip_all
  # remove locale files except ja
  if [ -d $P/usr/share/locale ] ; then
    find $P/usr/share/locale -maxdepth 1 \
        ! -name "locale" ! -name "ja*" -exec rm -rf {} \;
  fi
  # remove dir file in $infodir and compress info files
  if [ -f $infodir/dir ] ; then rm -f $infodir/dir ; fi
  gzip_dir $infodir
  #  compress man pages
  if [ -d $P/usr/share/man ] ; then
    find $P/usr/share/man -name "man?" -exec gzip_dir {} \;
  fi
  # install and compress doc files
  for i in $DOCS ; do
    install2 $S/$i $docdir/$src/$i
    touch -r $S/$i $docdir/$src/$i
    gzip_one $docdir/$src/$i
  done
  install $myname $docdir/$src
  gzip_one $docdir/$src/$myname
  # install and compress patch files
  for i in $patchfiles ; do
    install2 $W/$i $docdir/$src/$i
    touch -r $W/$i $docdir/$src/$i
    gzip_one $docdir/$src/$i
  done
  # set owner.group in /usr/share/doc
  if [ `id -u` -eq 0 ] ; then chown -R root.root $P/usr/share/doc ; fi
}

# set working directories
W=`pwd` ; WD=/tmp
S=$W/$src ; B=$WD/build
P=$W/work ; C=$W/pivot
infodir=$P/usr/share/info
mandir=$P/usr/share/man
docdir=$P/usr/share/doc
myname=`basename $0`
pkg=$pkgbase-$vers-$arch-$build
case $arch in x86_64) libdir=lib64 ;; *) libdir=lib ;; esac
