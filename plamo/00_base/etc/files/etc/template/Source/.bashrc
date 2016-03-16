###################################################################
#  Plamo Linux ユーザ設定ファイルサンプル for bash
#                            Time-stamp: <2005-02-02 20:09:17 cyamauch>
#                            Time-stamp: <2016-01-22 17:19:56 kojima>

# prevent illegal line wrapping
shopt -s checkwinsize

## ログイン時以外 (ログインシェルでない場合) で、
## 対話シェルの場合に実行されます。

if [ ! -n "$SSH_CLIENT" -o -n "$SSH_TTY" ] ; then

# シェル変数の設定 (詳細は man bash)
# 保存する履歴の行数
HISTSIZE=512
HISTFILESIZE=512
# 空白文字で始まる行，履歴の最後の行にマッチする行は
# 履歴に入れない
HISTCONTROL=ignoreboth
# Ctrl+D は 3 回無視する
IGNOREEOF=3

# 端末によって日本語表示する/しないの切り替え
#if [ "$TERM" = "linux" ] ; then
#  LANG=C
#else
#  LANG=ja_JP.eucJP
#fi
#LANG=ja_JP.eucJP
#export LANG

# JISで表示できない端末はEUCにする
#if [ "$TERM" = "xterm" -o "$TERM" = "dtterm" ] ; then
#  JLESSCHARSET=japanese-euc
#fi

if [ "$TERM" == "linux" ] ; then
  LANG=ja_JP.eucJP
  JLESSCHARSET=japanese-euc
  OUTPUT_CHARSET=EUC-JP
  export LANG JLESSCHARSET OUTPUT_CHARSET
else
  source $HOME/.set_lang_bsh @LOCALE@
fi

# less で行番号をつけ，終了後に画面を残す
LESS='-R -M -X'

EDITOR='vi'
#EDITOR='emacs -nw'
PAGER='less'
export LESS EDITOR PAGER

# for Python 2.7
#PYTHONPATH=/usr/lib64/python2.7/site-packages:/opt/kde/lib64/python2.7/site-packages
#export PYTHONPATH

# if [ $SHLVL = 1 ] ; then
#   PATH="$PATH:." ;
# fi

# ls で色をつける
# 色設定等は ~/.dir_colors
if [ -x /usr/bin/dircolors ]; then
  eval `dircolors -b $HOME/.dir_colors`
  LS_OPTIONS='--color=auto -F -T 0 -N'
else
  LS_OPTIONS='-F -T 0 -N';
fi
# Emacs などの dumb 端末では色をつけない
if [ "$TERM" = "dumb" ] ; then
  LS_OPTIONS="-F -T 0 -N --color=none"
else
  GREP_OPTIONS="--color=auto"
  export GREP_OPTIONS
fi
export LS_OPTIONS

alias ls='ls $LS_OPTIONS'
alias dir='dir $LS_OPTIONS';
alias vdir='vdir $LS_OPTIONS';

# Windowのタイトルバーにカレントディレクトリ
# が表示不可能な場合のプロンプト設定
PS1='\u@\h:\w\$ '
#PS1='\h:\w\$ '

# 端末のタイトルに prompt を表示する
if [ "$TERM" = "screen" ] ; then
  SCREEN=screen@
fi
case $TERM in
kterm|xterm|rxvt|dtterm|vt100|screen)
    # Windowのタイトルバーにカレントディレクトリ
    # が表示可能な場合のプロンプト設定
    #   表示例→ hoge@host:/usr/lib64/X11/app-defaults$ _
    PS1='\u@\h:\w\$ '
    #   表示例→ hoge@host:app-defaults$ _
    #PS1='\u@\h:\W\$ '
    HN="$SCREEN`hostname`:"
    #HN="$SCREEN`hostname -s`:"
    case "$TERM" in
    vt*)
	HN=""
    ;;
    esac
    function mkrmhmpwd () {
	tty > /dev/null
	if [ "$?" = "0" ] ; then
	  BSBS_HOME=`echo "/$HOME"|/usr/bin/sed -e 's/\//\\\\\//g'` ;
	  RMHMPWD=`echo "/$PWD"|/usr/bin/sed -e "s/$BSBS_HOME/~/g"` ;
	  if [ "$RMHMPWD" = "/$PWD" ] ; then
	      RMHMPWD="$PWD"
	  fi
	fi
    }
    # 遅いマシンではこの設定の方がいいかも…
    # function mkrmhmpwd () { RMHMPWD="$PWD" ; }
    function termtitle () {
	tty > /dev/null
	if [ "$?" = "0" ] ; then
	  if [ -w `tty` ] ; then
	    echo -ne "\033]0;$TERM - $*\007" > `tty`
	  fi
	fi
    }
    function cd () {
	if [ "x.$*" = "x." ] ; then
	    builtin cd $* ;
	else
	    builtin cd "$*" ;
	fi
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ;
    }
    function popd () {
	if [ "x.$*" = "x." ] ; then
	    builtin popd $* ;
	else
	    builtin popd "$*" ;
	fi
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ;
    }
    function pushd () {
	if [ "x.$*" = "x." ] ; then
	    builtin pushd $* ;
	else
	    builtin pushd "$*" ;
	fi
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ;
    }
    #function pwd () { builtin pwd ; mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ; }
    function su () { mkrmhmpwd ; termtitle "$HN""su $*($RMHMPWD)" ;
	if [ "$1" = "-c" ] ; then command su -c "$2";
	elif [ "$2" = "-c" ] ; then command su $1 -c "$3"
	elif [ "$3" = "-c" ] ; then command su - $2 -c "$4"
	else command su $* ; fi
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ; }
    function rsh () {
	termtitle "$HN""rsh $*"
	command rsh $*
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
    }
    function rlogin () {
	termtitle "$HN""rlogin $*"
	command rlogin $*
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
    }
    function telnet () {
	termtitle "$HN""telnet $*"
	command telnet $*
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
    }
    function ssh () {
	termtitle "$HN""ssh $*"
	command ssh $*
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
    }
    function screen () {
	command screen $*
	mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
    }
#    mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
;;
esac

# 端末によるBackSpaceキーの調整
stty erase '^?'
case "$TERM" in
kterm|sun)
    stty erase '^H'
#   ~/.inputrc で設定済
#   bind '"\C-?": delete-char'
    ;;
#vt*)
#    stty erase '^H'
#    bind '"\C-?": delete-char'
#    ;;
esac
stty werase '^W'
# Ctrl+S での stop をやめる
stty stop undef

# キーバインド等の設定は .inputrc も参照してください．

#Aliases
alias h='history'
alias rmdvi='rm *.dvi ; rm *.log ; rm *.aux ; rm *.toc'
alias rmback='rm *~ ; rm *.bak'
alias j='jobs -l'
alias la='ls -a'
alias ll='ls -l'
alias z='suspend'
alias x='exit'
alias LS='ls -alF | command less -E'
alias mu='mule -rv'
#alias ssh1='ssh -1'
#alias scp1='scp -oProtocol=1'
#alias xv='xv -nolimits'

fi

# Source global definitions
if [ -f /etc/bashrc ] ; then
  . /etc/bashrc
fi
