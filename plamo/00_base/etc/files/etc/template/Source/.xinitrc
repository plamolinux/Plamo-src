#!/bin/sh
######################################################################
# Plamo Linux ユーザ設定ファイルサンプル for xinitrc, xsession
#                           Time-stamp: <2005-10-28 14:45:12 cyamauch>
#                           Time-stamp: <2006-01-18 16:56:27 jado>
#                           Time-stamp: <2009-06-18 15:07:14 kojima>
#                           Time-stamp: <2009-06-22 19:24:46 tamuki>
#                           Time-stamp: <2011-07-25 19:59:37 karma>
#                           Time-stamp: <2016-01-22 12:49:27 kojima>

# startx，xdm から実行されるファイルです。

#WM="step"
#WM="qvwm"
#WM="twm"
WM="xfce"
#WM="kde"
#WM="mate"

unset TERM

if [ $WM == "step" ] ; then
  xsetroot -solid white
  ini_mail=/etc/template/mime-mail.sample
  cur_mail=/var/spool/mail/$USER
  if [ -f $ini_mail -a -f $cur_mail ] ; then
    if diff $ini_mail $cur_mail > /dev/null ; then
      [ -x /usr/lib64/X11/afterstep/plamo_banner ] &&
          /usr/lib64/X11/afterstep/plamo_banner &
    fi
  fi
elif [ $WM == "qvwm" ] ; then
  xsetroot -solid black
  [ -f /usr/share/qvwm/images/logo.xpm ] &&
      qvbanner /usr/share/qvwm/images/logo.xpm &
fi

#LANG=ja_JP.eucJP
#export LANG

source $HOME/.set_lang_bsh @LOCALE@

#PATH=$HOME/bin:$PATH

# KDE additions:
KDEDIR=/opt/kde
PATH=$PATH:/usr/lib64/qt/bin:$KDEDIR/bin

# Environment variables for the htdig package:
PATH=$PATH:/opt/www/htdig/bin
export KDEDIR PATH

#SHELL=/bin/tcsh
#export SHELL

userresources=$HOME/.Xdefaults
[ -f $userresources ] && xrdb -merge $userresources

# .Xmodmap(英語キーボード用)に CapsLock(英数)と Ctrl を入れ変える設定を
# 入れてあります。
if [ "x`xmodmap -pk | grep Eisu_toggle`" == "x" ] ; then
  usermodmap=$HOME/.Xmodmap
else
  usermodmap=$HOME/.Xmodmap.jp
fi

# Xの利用時に，Caps_Lock(英数) と Control_L とを入れ替える時は有効にします。
#[ -f $usermodmap ] && xmodmap $usermodmap

# 富士通の一部の変態キーボード用
#xmodmap -e 'keycode 131 = backslash underscore'

# ユーザのホームディレクトリに font を置く場合にはこのようにします。
#xset +fp $HOME/lib64/fonts

# 漢字入力システム kinput2 の起動
#CC_DEF_PATH=$HOME/.kinput2/ccdef
#export CC_DEF_PATH
#[ -f $HOME/.kinput2.PID ] && rm $HOME/.kinput2.PID
#[ -x /usr/bin/kinput2 ] && exec /usr/bin/kinput2 &

# 漢字入力システム skkinput の起動
#[ -x /usr/bin/skkinput ] && exec /usr/bin/skkinput &

# 日本語入力サーバ nicolatter の起動
#[ -x /usr/bin/nicolatter ] && ( sleep 15 ; /usr/bin/nicolatter ) &

# 日本語入力 IME jmode の起動
#[ -x /usr/bin/jmode ] && /usr/bin/jmode &

# 多言語入力メソッドフレームワーク uim の起動
[ -x /usr/bin/uim-xim ] && uim-xim &
[ -x /usr/bin/uim-toolbar-gtk -a $WM != "kde" -a $WM != "mate" ] && uim-toolbar-gtk &
[ -x /usr/bin/uim-toolbar-qt4 -a $WM == "kde" ] && uim-toolbar-qt4 &
[ -x /usr/bin/uim-toolbar-gtk-systray -a $WM == "mate" ] && uim-toolbar-gtk-systray &

# 多言語入力環境 SCIM の起動
#[ -x /usr/bin/scim ] && /usr/bin/scim -d

# インプットメソッドフレームワーク ibus の起動
#[ -x /usr/bin/ibus-daemon ] && /usr/bin/ibus-daemon -d -x

# kinput2 を使う場合はこちら
#XMODIFIERS="@im=kinput2"
# skkinput を使う場合はこちら
#XMODIFIERS="@im=skkinput"
# nicolatter を使う場合はこちら
#XMODIFIERS="@im=nicolatter"
# jmode を使う場合はこちら
#XMODIFIERS="@im=jmode"
# 上記を使う場合はこちらも
#QT_IM_MODULE=xim
#GTK_IM_MODULE=xim
# uim を使う場合はこちら
XMODIFIERS="@im=uim"
QT_IM_MODULE=uim
GTK_IM_MODULE=uim
# SCIM を使う場合はこちら
#XMODIFIERS="@im=SCIM"
#QT_IM_MODULE=scim-bridge
#GTK_IM_MODULE=scim-bridge
# ibus を使う場合はこちら
#XMODIFIERS="@im=ibus"
#QT_IM_MODULE=ibus
#GTK_IM_MODULE=ibus
export XMODIFIERS
export QT_IM_MODULE GTK_IM_MODULE

# ATOKX クライアントの起動
if [ -x /opt/atokx2/bin/atokx2_client.sh ] ; then
  /opt/atokx2/bin/atokx2_client.sh
elif [ -x /usr/lib64/im/locale/ja/atokserver/atokx_client ] ; then
  . /usr/lib64/im/locale/ja/atokserver/atokx_client
fi

# for StarSuite
USE_XOPENIM=t
export USE_XOPENIM

# obsolete setting
#UNICODEMAP_JP=cp932
#export UNICODEMAP_JP

# Environment variables for the Qt package:
#QTDIR=/usr/lib64/qt
#CPLUS_INCLUDE_PATH=$QTDIR/include:$CPLUS_INCLUDE_PATH
#MANPATH="$MANPATH:/usr/lib64/qt/doc/man"
#export QTDIR CPLUS_INCLUDE_PATH MANPATH
# QT_GRAPHICSSYSTEM: native (default) | opengl | raster
#QT_GRAPHICSSYSTEM=opengl
#export QT_GRAPHICSSYSTEM

# GNOME(glib2) が作るファイル名のエンコーディングを LANG に合わせる。
G_FILENAME_ENCODING=@locale
export G_FILENAME_ENCODING

# MP3 のタグの文字コード(読み込み: CP932 or UTF-8 / 書き込み: CP932)
#GST_ID3_TAG_ENCODING=CP932:UTF-8
#export GST_ID3_TAG_ENCODING

# 設定するとウインドウマネージャを変更可能
#WINDOW_MANAGER="metacity"
#export WINDOW_MANAGER

XDG_DATA_DIRS=/usr/share:/opt/kde/share
XDG_CONFIG_DIRS=/etc/xdg
export XDG_DATA_DIRS XDG_CONFIG_DIRS

#
# 壁紙の設定
#
# イメージを貼り付ける場合
#xv +noresetroot -root -max -quit /usr/share/pixmaps/backgrounds/Plamo/plamoback.jpg
#xv +noresetroot -root -max -quit /usr/share/pixmaps/backgrounds/Plamo/plamoback_c1.png
#xv +noresetroot -root -max -quit /usr/share/pixmaps/backgrounds/Plamo/plamoback_c2.png
#xv +noresetroot -root -max -quit /usr/share/pixmaps/backgrounds/Plamo/plamoback_c3.png
#xv +noresetroot -root -quit /usr/lib64/X11/afterstep/backgrounds/wood.jpg
#xv +noresetroot -root -quit /usr/include/X11/pixmaps/world.xpm
#xv +noresetroot -root -quit /usr/share/pixmaps/backgrounds/Plamo/sx68k_root1.xpm
#xv +noresetroot -root -quit /usr/share/pixmaps/backgrounds/Plamo/sx68k_root2.xpm
# 単一色の場合
#xsetroot -solid '#404060'
if [ $WM == "step" ] ; then
  xv +noresetroot -root -max -quit /usr/share/pixmaps/backgrounds/Plamo/plamoback_c3.png
elif [ $WM == "twm" ] ; then
  xv +noresetroot -root -quit /usr/share/pixmaps/backgrounds/Plamo/sx68k_root1.xpm
fi

# African Penguin Day!!
if [ `date +%m%d` \> "0925" -a `date +%m%d` \< "1003" -a `date +%u` -ge 5 ] ; then
  [ -x /usr/bin/xpenguins ] && /usr/bin/xpenguins &
fi

# Keep Christmas!!
if [ `date +%m%d` \> "1222" -a `date +%m%d` \< "1227" ] ; then
  [ -x /usr/bin/xsnow ] && /usr/bin/xsnow &
fi

# unclutter は一定時間動かないカーソルを隠すプログラムです。
#unclutter &
if [ $WM != "xfce" -a $WM != "kde" -a $WM != "mate" ] ; then
  unclutter &
fi

# メールをお知らせ :-9
# ローカルマシンのスプールにメールが配送されたら知らせる。
# POP/IMAP プロトコルで取り込む場合は使えない。
#xmascot -degree 15 -geometry +10+4 &
if [ $WM == "step" ] ; then
  xmascot -degree 15 -geometry +10+4 &
fi

# 日本語のカレンダー
#xcalendar -geometry 235x215+0+600 &

# サウンドミキサー
#xamixer &

# 有名な EmiClock です。
#emiclock -geometry 140x140+662+0 &

# xipmsg は，Windows 95 & NT や Machintosh の IP-Messenger を
# X window に移植したものです。
# これを起動しておくことで Windows や Mac ユーザと
# リアルタイムに日本語でチャットする事が可能です。
#xipmsg -name "ハンドル名" &

# X Window が一定時間利用されない時に，
# ウィンドウマネージャで設定したスクリーンセーバーが表示されます。
xset s off

# X Window が一定時間利用されない時に画面をロックします。
#xset s noblank

# mnews の起動
#kterm -km euc -sb -sl 500 -geometry 80x24+0+0 -e mnews -bg cornsilk &

# 適当な場所に kterm を開きます。
#kterm -vb -km euc -geometry 80x30+10+10 -bg cornsilk &
if [ $WM == "qvwm" ] ; then
  kterm -vb -km euc -geometry 80x30+10+10 -bg cornsilk &
elif [ $WM == "twm" ] ; then
  kterm -vb -km euc -geometry 80x36+24+4 -bg cornsilk &
  kterm -vb -km euc -geometry 80x36-4+4 -bg cornsilk &
  kterm -vb -km euc -geometry 86x36+4-4 -bg cornsilk &
fi

if [ -n "$XDG_SESSION_COOKIE" -a -x /usr/bin/dbus-launch ] ; then
  LAUNCH="dbus-launch --exit-with-session"
elif [ -x /usr/bin/ck-launch-session -a -x /usr/bin/dbus-launch ] ; then
  LAUNCH="ck-launch-session dbus-launch --exit-with-session"
else
  LAUNCH=""
fi

mesg n

# ウィンドウマネージャを終了すると X が終了します。
case $WM in
"step")
  exec $LAUNCH afterstep
  ;;
"qvwm")
  exec $LAUNCH qvwm
  ;;
"twm")
  exec $LAUNCH twm
  ;;
"xfce")
  exec $LAUNCH startxfce4
  ;;
"kde")
  exec $LAUNCH startkde
  ;;
"mate")
  exec $LAUNCH mate-session
  ;;
esac

mesg y
