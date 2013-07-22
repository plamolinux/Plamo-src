######################################################################
# Plamo Linux ユーザ設定ファイルサンプル .login
#                           Time-stamp: <2004-01-11 23:31:23 cyamauch>
#                           Time-stamp: <2009-07-09 12:21:25 tamuki>

# biff: メールが届くと端末にメッセージを表示します。
if ( -x /usr/bin/biff ) then
  if ( -w `tty` ) then
    biff y
  endif
endif

# fortune: ログイン時に毎回違ったメッセージを表示します。
if ( $SHLVL == 1 ) then
  if ( { tty --silent } ) then >& /dev/null
    if ( -x /usr/games/fortune ) then
      echo ; /usr/games/fortune ; echo
    endif
  endif
endif

# esd: サウンドサーバを起動します。
if ( $SHLVL == 1 ) then
  if ( -x /usr/bin/esdctl && ! { esdctl serverinfo } ) then >& /dev/null
    if ( -x /usr/bin/esd ) then
      ( setsid dbus-launch esd -r 48000 & ) >& /dev/null
      ( setsid sh -c "sleep 5 ; /usr/sbin/alsactl restore" & ) >& /dev/null
    endif
  endif
endif
