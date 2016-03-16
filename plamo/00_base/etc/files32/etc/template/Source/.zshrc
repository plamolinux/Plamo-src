###################################################################
#  Plamo Linux ユーザ設定ファイルサンプル .zshrc
#                       Chisato Yamauchi (cyamauch@phyas.aichi-edu.ac.jp)
#                            Time-stamp: <2005-02-02 20:10:01 cyamauch>
#                            Time-stamp: <2016-01-22 19:52:16 kojima>

#if [ $SHLVL = 1 ] ; then
#  PATH="$PATH:." ;
#fi

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

if [ "$TERM" = "linux" ] ; then
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
#PYTHONPATH=/usr/lib/python2.7/site-packages:/opt/kde/lib/python2.7/site-packages

HISTFILE=$HOME/.zhistory

# color-ls
# 色設定等は ~/.dir_colors
if [ -x /usr/bin/dircolors ]; then
  eval `dircolors -b ~/.dir_colors`
  LS_OPTIONS=(--color=auto -F -T 0 -N) ;
else
  LS_OPTIONS=(-F -T 0 -N) ;
fi

# Emacs などの dumb 端末では色をつけない
if [ "$TERM" = "dumb" ] ; then
    LS_OPTIONS=(-F -T 0 -N --color=none) ;
else
  GREP_OPTIONS="--color=auto"
  export GREP_OPTIONS
fi

export LS_OPTIONS
alias ls='/bin/ls $LS_OPTIONS';
alias dir='/bin/dir $LS_OPTIONS';
alias vdir='/bin/vdir $LS_OPTIONS';

# Windowのタイトルバーにカレントディレクトリが
# 表示不可能な場合のプロンプト設定
PS1='%n@%m[%~]%# '
# kterm,xterm,rxvt のタイトルに prompt を表示する
case $TERM in
kterm|xterm|rxvt|dtterm|vt100)
    # Windowのタイトルバーにカレントディレクトリ
    # が表示可能な場合のプロンプト設定
    #   表示例→ hoge@host[/usr/lib/X11/app-defaults]% _
    PS1='%n@%m[%~]%# '
    #   表示例→ hoge@host[app-defaults]% _
    #PS1='%n@%m[%c]%# '
    HN="`hostname`:"
#    HN="`hostname -s`:"
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
    function cd () { builtin cd $* ; mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ; }
    function popd () { builtin popd $* ; mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ; }
    function pushd () { builtin pushd $* ; mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ; }
    #function pwd () { builtin pwd ; mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]" ; }
    function su () { mkrmhmpwd ; termtitle "$HN""su $*($RMHMPWD)" ;
	command su $* ;
	mkrmhmpwd ;
        termtitle "$HN""[$RMHMPWD]" ; }
    function rsh () {
	termtitle "$HN""rsh $*"
	command rsh $*
	mkrmhmpwd ;
	termtitle "$HN""[$RMHMPWD]"
    }
    function rlogin () {
	termtitle "$HN""rlogin $*"
	command rlogin $*
	mkrmhmpwd ;
	termtitle "$HN""[$RMHMPWD]"
    }
    function telnet () {
	termtitle "$HN""telnet $*"
	command telnet $*
	mkrmhmpwd ;
	termtitle "$HN""[$RMHMPWD]"
    }
    function ssh () {
	termtitle "$HN""ssh $*"
	command ssh $*
	mkrmhmpwd ;
	termtitle "$HN""[$RMHMPWD]"
    }
#    mkrmhmpwd ; termtitle "$HN""[$RMHMPWD]"
;;
esac

# プロンプト PS1 は export しない(後でbashを実行すると変になるので)
typeset +x PS1
# 保存する履歴の行数
HISTSIZE=512
SAVEHIST=512
# 補完候補を表示
setopt auto_list
# 重複するイベントを保存しない
setopt hist_ignore_all_dups
# ラインエディタ中でプロンプトを表示するまえにキャリッジリターンを表示しない
#unsetopt prompt_cr
# シェルが終了する前にジョブの状態を報告しない
#unsetopt check_jobs
# シェルが終了しても、実行中のジョブにHUPシグナルを送らない
unsetopt hup
# beep音を鳴らさない
#unsetopt beep
# Ctrl+D で exit しない
#setopt ignoreeof
# 補完で無視するサフィックス
#fignore=('.o' '~')
# メールを知らせる
#setopt mail_warning

#emacs ライクなキーバインドにする
bindkey -e
#vi ライクなキーバインドにする
#bindkey -v

# 検索付き履歴機能にする
# PageUp,PageDown キー
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
# ↑↓キー
# 古い zsh の history-search-xxxx にする
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
#bindkey "^[[A" history-search-backward
#bindkey "^[[B" history-search-forward
#bindkey "^[[A" backward-word
#bindkey "^[[B" forward-word
bindkey "^[[3~" delete-char
# Home,End キー
bindkey "^[[1~" beginning-of-history
bindkey "^[[4~" end-of-history
bindkey "^[[7~" beginning-of-history
bindkey "^[[8~" end-of-history

# 端末による BackSpace キーの調整
stty erase '^?'
case "$TERM" in
kterm|sun)
    stty erase '^H'
    bindkey "^?" delete-char
    ;;
#vt*)
#    stty erase '^H'
#    bindkey "^?" delete-char
#    ;;
esac
stty werase '^W'
# Ctrl+S での stop をやめる
stty stop undef

# aliases
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

# csh emulation
setenv () {
    if [ $# -eq 0 ]; then
	/usr/bin/printenv
    else
	export $1=$*[2,-1]
    fi
}
alias unsetenv=unset
