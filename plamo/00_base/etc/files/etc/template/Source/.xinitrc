#!/bin/sh
######################################################################
# Plamo Linux ユーザ設定ファイルサンプル for xinitrc
#                           Time-stamp: <2018-03-30 17:58:08 karma>
#                           Time-stamp: <2016-01-22 12:49:27 kojima>
#                           Time-stamp: <2011-07-25 19:59:37 karma>
#                           Time-stamp: <2009-06-22 19:24:46 tamuki>
#                           Time-stamp: <2009-06-18 15:07:14 kojima>
#                           Time-stamp: <2006-01-18 16:56:27 jado>

# startx，xdm から実行されるファイルです。

WM="@WM@"

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

XMODIFIERS="@im=@IM@"
QT_IM_MODULE=@IM@
GTK_IM_MODULE=@IM@
export XMODIFIERS
export QT_IM_MODULE GTK_IM_MODULE

LAUNCH="ck-launch-session dbus-launch --exit-with-session"

mesg n

# ウィンドウマネージャを終了すると X が終了します。
case $WM in
"twm")
  exec $LAUNCH twm
  ;;
"xfce")
  exec $LAUNCH startxfce4
  ;;
"mate")
  exec $LAUNCH mate-session
  ;;
"lxde")
  exec $LAUNCH startlxde
  ;;
"lxqt")
  exec $LAUNCH startlxqt
  ;;
esac

mesg y
