. $HOME/.bashrc
export LANG=C
if [ -x /usr/bin/biff ]; then
  biff y
fi
if [ $SHLVL = 1 ] ; then
  if [ -x /usr/games/bin/fortune ]; then
    echo
    /usr/games/bin/fortune
    echo
  fi
fi
