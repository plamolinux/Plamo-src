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

prepare() {
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
}

try_expand() {
  case ${1##*.} in
  gz) gunzip -c $1 > $2 ;;
  bz2) bunzip2 -c $1 > $2 ;;
  xz) unxz -c $1 > $2 ;;
  esac
  touch -r $1 $2
}

verify_signature() {
  i=$1 ; j=${i%.*}
  if [ -n "$2" ] ; then
    sigfile=${2##*/} ; sig=${2##*.}
    if [ "$sigfile" != "${i##*/}.$sig" ] ; then
      try_expand ${i##*/} ${j##*/}
    fi
    wget $2
  elif [ -n "$3" ] ; then
    sig=${3%:*} ; sigfile=${i##*/}.$sig
    echo "${3#*:}  ${i##*/}" > $sigfile
    touch -r ${i##*/} $sigfile
  elif [ -n "$4" ] ; then
    sig=${4%=*} ; sigfile=${i##*/}.$sig
    echo "${4#*=}  ${i##*/}" > $sigfile
    touch -r ${i##*/} $sigfile
  else
    for sig in asc sig{,n} dsc {sha{256,1},md5}{,sum} ; do
      if wget --spider $i.$sig ; then wget $i.$sig ; break ; fi
      if wget --spider $j.$sig ; then
        try_expand ${i##*/} ${j##*/} ; i=$j ; wget $i.$sig ; break
      fi
    done
    sigfile=${i##*/}.$sig
  fi
  if [ -f $sigfile ] ; then
    case $sig in
    asc|sig|sign|dsc) gpg2 --verify $sigfile ;;
    sha256|sha1|md5) ${sig}sum -c $sigfile ;;
    *) $sig -c $sigfile ;;
    esac
    if [ $? -ne 0 ] ; then echo "archive verify failed" ; exit ; fi
  fi
}

download_sources() {
  url=($url)
  for i in `seq 0 $((${#url[@]} - 1))` ; do
    j=${url[$i]%%#*} ; k=`[[ ${url[$i]} =~ \# ]] && echo ${url[$i]#*#}`
    case ${j##*.} in
    git) if [ ! -d `basename ${j##*/} .git` ] ; then git clone $j ; else
        ( cd `basename ${j##*/} .git` ; git pull origin master ) ; fi ;;
    *) if [ ! -f ${j##*/} ] ; then wget $j
        verify_signature $j "${verify[$i]}" "${digest[$i]}" "$k" ; fi ;;
    esac
  done
  if [ -f gitlog2changelog ] ; then
    if [ ! -x gitlog2changelog ] ; then chmod +x gitlog2changelog ; fi
    PATH=$W:$PATH
  fi
  for i in `seq 0 $((${#url[@]} - 1))` ; do
    j=${url[$i]%%#*}
    case ${j##*.} in
    tar) tar xvpf ${j##*/} ;;
    gz|tgz) tar xvpzf ${j##*/} ;;
    bz2|tbz) tar xvpjf ${j##*/} ;;
    xz|txz) tar xvpJf ${j##*/} ;;
    zip) unzip ${j##*/} ;;
    git) ( cd `basename ${j##*/} .git`
        git checkout origin/master ; git reset --hard ${commitid[$i]:-HEAD}
        git set-file-times ; if [ -z "`git ls-files ChangeLog`" ] ; then
        LANG=ja_JP.UTF-8 TZ=UTC gitlog2changelog ; fi ) ;;
    esac
  done
}

apply_patches() {
  for i in `seq 0 $((${#B[@]} - 1))` ; do (
    cd ${B[$i]}
    for j in ${patchfiles[$i]} ; do
      case ${j##*.} in
      gz) gunzip -c $W/$j | patch -Np1 -i - ;;
      bz2) bunzip2 -c $W/$j | patch -Np1 -i - ;;
      xz) unxz -c $W/$j | patch -Np1 -i - ;;
      *) patch -Np1 -i $W/$j ;;
      esac
    done
  ) done
}

root_priv() {
  if [ `id -u` -ne 0 ] ; then
    read -p "Do you want to package as root? [y/N] " ans
    if [ "$ans" == "Y" -o "$ans" == "y" ] ; then
      cd $W ; /bin/su -c "$0 package" ; exit
    fi
  fi
}

alias check_root=root_priv

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
        echo "stripping $i with -p"
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
        echo "stripping $i with -gp"
        strip -gp $i
      fi
    done
  ) fi
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

compress() {
  for i in {$P,$P/usr}/{sbin,bin} ; do strip_bindir $i ; done
  for i in {$P,$P/usr}/$libdir ; do strip_libdir $i ; done
  if [ -f $infodir/dir ] ; then rm -f $infodir/dir ; fi
  gzip_dir $infodir
  for i in `seq 9` n ; do gzip_dir $mandir/man$i ; done
}

setup_docdir() {
  for i in `seq 0 $((${#DOCS[@]} - 1))` ; do
    for j in ${DOCS[$i]} ; do
      for k in ${S[$i]}/$j ; do
        install2 $k $docdir/${src[$i]}/${k#${S[$i]}/}
        touch -r $k $docdir/${src[$i]}/${k#${S[$i]}/}
        gzip_one $docdir/${src[$i]}/${k#${S[$i]}/}
      done
    done
    if [ $i -eq 0 ] ; then
      func=${myname%%.*}_functions
      if [ -f functions ] ; then
        install -m 644 functions $docdir/$src/$func
        touch -t `date '+%m%d0900'` $docdir/$src/$func
      else
        cp -p /usr/share/plamo/functions $docdir/$src/$func
      fi
      install $myname $docdir/$src
      touch -t `date '+%m%d0900'` $docdir/$src/$myname
      tmpl=${myname%%.*}-template-$template
      if [ -f ../admin/$tmpl ] ; then
        cp -p ../admin/$tmpl $docdir/$src
      else
        ( cd $docdir/$src
            curl -Rs -o $tmpl $tmplurl/${tmpl/${myname%%.*}/PlamoBuild} )
      fi
      spec=$myname-spec
      ( cd $docdir/$src ; diff -u $tmpl $myname > $spec )
      touch -t `date '+%m%d0900'` $docdir/$src/$spec
      rm $docdir/$src/$tmpl
      gzip $docdir/$src/{$func,$myname,$spec}
      mv $docdir/$src/{$func,$myname,$spec}.gz $C
      mv $C/{$func,$myname,$spec}.gz $docdir/$src
    else
      ln $docdir/$src/$func.gz $docdir/${src[$i]}
      ln $docdir/$src/$myname.gz $docdir/${src[$i]}
      ln $docdir/$src/$spec.gz $docdir/${src[$i]}
    fi
    ( cd $docdir ; find ${src[$i]} -type d -exec touch -r $W/{} {} \; )
  done
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

cleanup() {
  read -p "Do you want to keep work files? [y/N] " ans
  if [ "$ans" != "Y" -a "$ans" != "y" ] ; then rm -rf $P $C i.[se]t ; fi
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
    for i in `find $P/usr/share/man -name "man?"` ; do gzip_dir $i ; done
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
