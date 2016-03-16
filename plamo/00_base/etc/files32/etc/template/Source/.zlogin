######################################################################
# Plamo Linux ユーザ設定ファイルサンプル .zlogin
#                           Time-stamp: <2004-01-11 23:24:19 cyamauch>
#                           Time-stamp: <2009-07-09 12:23:37 tamuki>

# biff: メールが届くと端末にメッセージを表示します。
if [ -x /usr/bin/biff ] ; then
  if [ -w `tty` ] ; then
    biff y
  fi
fi

# fortune: ログイン時に毎回違ったメッセージを表示します。
if [ $SHLVL -eq 1 ] ; then
  if [ -x /usr/games/fortune ] ; then
    echo ; /usr/games/fortune ; echo
  fi
fi

# esd: サウンドサーバを起動します。
if [ $SHLVL -eq 1 ] ; then
  if [ -x /usr/bin/esdctl ] && ! esdctl serverinfo &> /dev/null ; then
    if [ -x /usr/bin/esd ] ; then
      ( setsid dbus-launch esd -r 48000 & ) &> /dev/null
      ( setsid sh -c "sleep 5 ; /usr/sbin/alsactl -L restore" & ) &> /dev/null
    fi
  fi
fi
