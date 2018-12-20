#!/bin/sh

SAVEPATH=$PATH

PREFIX=/opt/texlive/2018
TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/')

PATH=$PREFIX/bin/$TEXARCH:$PATH
export PATH

if ! grep "$PREFIX/lib" /etc/ld.so.conf ; then
  echo "ld.so.conf に $PREFIX/lib を追加中 (for texlive)"
  echo "$PREFIX/lib" >> /etc/ld.so.conf
fi

if [ ! -d $PREFIX/../texmf-local ]; then
  mkdir -p $PREFIX/../texmf-local
fi

# make links
texlinks -v -f $PREFIX/texmf-dist/web2c/fmtutil.cnf -e "" $PREFIX/bin/$TEXARCH

# set system fontdir
sed -i -e 's|^OSFONTDIR.*$|OSFONTDIR = /usr/share/fonts|' $PREFIX/texmf-dist/web2c/texmf.cnf

# initialize
mktexlsr
fmtutil-sys --all
mtxrun --generate

# setup Japanese fonts
kanji-config-updmap-sys ipaex
echo "TeXLive の日本語フォントの設定を行いました: "
kanji-config-updmap-sys status

PATH=$SAVEPATH
