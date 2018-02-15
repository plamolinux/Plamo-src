#!/bin/sh
######################################################################
# Plamo Linux ユーザ設定ファイルサンプル for xinitrc
#                           Time-stamp: <2018-02-15 20:05:22 karma>
#                           Time-stamp: <2016-01-22 12:49:27 kojima>
#                           Time-stamp: <2011-07-25 19:59:37 karma>
#                           Time-stamp: <2009-06-22 19:24:46 tamuki>
#                           Time-stamp: <2009-06-18 15:07:14 kojima>
#                           Time-stamp: <2006-01-18 16:56:27 jado>

# startx，xdm から実行されるファイルです。

#WM="twm"
WM="xfce"
#WM="kde"
#WM="mate"
#WM="lxde"
#WM="lxqt"

unset TERM

source $HOME/.set_lang_bsh @LOCALE@

userresources=$HOME/.Xdefaults
[ -f $userresources ] && xrdb -merge $userresources

# キーマップ変更
#usermodmap=$HOME/.Xmodmap
#[ -f $usermodmap ] && xmodmap $usermodmap

# 多言語入力メソッドフレームワーク uim の起動
[ -x /usr/bin/uim-xim ] && uim-xim &
[ -x /usr/bin/uim-toolbar-gtk -a $WM != "kde" -a $WM != "mate" ] && uim-toolbar-gtk &
[ -x /usr/bin/uim-toolbar-qt4 -a $WM == "kde" ] && uim-toolbar-qt4 &
[ -x /usr/bin/uim-toolbar-gtk-systray -a $WM == "mate" ] && uim-toolbar-gtk-systray &

# skkinput を使う場合はこちら
#XMODIFIERS="@im=skkinput"
#QT_IM_MODULE=xim
#GTK_IM_MODULE=xim
# uim を使う場合はこちら
XMODIFIERS="@im=uim"
QT_IM_MODULE=uim
GTK_IM_MODULE=uim
# fcitx を使う場合はこちら
#XMODIFIERS="@im=fcitx"
#QT_IM_MODULE=fcitx
#GTK_IM_MODULE=fcitx
export XMODIFIERS
export QT_IM_MODULE GTK_IM_MODULE

# African Penguin Day!!
if [ `date +%m%d` \> "0925" -a `date +%m%d` \< "1003" -a `date +%u` -ge 5 ] ; then
  [ -x /usr/bin/xpenguins ] && /usr/bin/xpenguins &
fi

# Keep Christmas!!
if [ `date +%m%d` \> "1222" -a `date +%m%d` \< "1227" ] ; then
  [ -x /usr/bin/xsnow ] && /usr/bin/xsnow &
fi
