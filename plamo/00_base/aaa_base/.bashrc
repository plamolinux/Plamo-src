# color-ls
if which dircolors >& /dev/null; then
  eval `dircolors -b $HOME/.dir_colors`
  LS_OPTIONS='--color=auto -F -T 0 -N'
else
  LS_OPTIONS='-F -T 0 -N';
fi
if [ "$TERM" = "dumb" ] ; then LS_OPTIONS="-F -T 0 -N --color=none" ; fi
export LS_OPTIONS
alias ls='ls $LS_OPTIONS'

PS1='\u@\h:\w\$ '

# Source global definitions
if [ -f /etc/bashrc ] ; then
  . /etc/bashrc
fi
