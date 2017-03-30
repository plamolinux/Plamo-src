#!/bin/sh -
#
# To use this filter with less, define LESSOPEN:
# export LESSOPEN="|/usr/bin/lesspipe.sh %s"

lesspipe() {
  case "$1" in
  *.[1-9n]|*.man|*.[1-9n].bz2|*.man.bz2|*.[1-9].gz|*.[1-9]x.gz|*.[1-9].man.gz)
    case "$1" in
    *.gz) DECOMPRESSOR="gunzip -c" ;;
    *.bz2) DECOMPRESSOR="bunzip2 -c" ;;
    *) DECOMPRESSOR="cat" ;;
    esac
    if $DECOMPRESSOR -- "$1" | file - | grep -q "troff" ; then
      if echo "$1" | grep -q "^/" ; then	# absolute path
        man -- "$1" | cat -s
      else
        man -- "./$1" | cat -s
      fi
    else
      $DECOMPRESSOR -- "$1"
    fi ;;
  *.tar|*.tar.*|*.tgz|*.tbz2|*.txz) tar tvvf "$1" ;;
  *.[zZ]|*.gz) gzip -dc -- "$1" ;;
  *.xz) xz -dc -- "$1" ;;
  *.lzma|*.lzm) lzma --dc -- "$1" ;;
  *.lzo) lzop --dc -- "$1" ;;
  *.lzh) lha -l "$1" ;;
  *.bz2) bzip2 -dc -- "$1" ;;
  *.zip|*.jar|*.od[ts]) zipinfo -- "$1" ;;
  *.rpm) rpm -qpivl --changelog -- "$1" ;;
  *.cpi|*.cpio) cpio -itv < "$1" ;;
  esac
}

if [ -d "$1" ] ; then
  ls -flF -- "$1"
else
  lesspipe "$1" 2> /dev/null
fi
