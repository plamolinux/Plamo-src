# /etc/csh.login: This file contains login defaults used by csh and tcsh.

# Set up some environment variables:
if ($?prompt) then
	umask 022
	set cdpath = ( /var/spool )
	set notify
	set history = 100
#	set complete = igncase
#        setenv MANPATH /usr/share/man:/usr/local/man:/usr/man
	setenv MINICOM "-c on"
	setenv HOSTNAME "`cat /etc/HOSTNAME`"
	setenv LESS "-M"
	setenv LESSOPEN "|lesspipe.sh %s"
	setenv JLESSCHARSET japanese-euc
	setenv OUTPUT_CHARSET EUC-JP 
	setenv LANG ja_JP.eucJP
        setenv JSERVER localhost
        setenv TZ /etc/localtime
        setenv PKG_CONFIG_PATH /usr/lib/pkgconfig
	if( $SHLVL == 1 ) then
	  set path = ( /usr/local/bin /bin /usr/bin )
	  set path = ( $path /usr/games/bin /usr/games )
          if ( -d /etc/profile.d ) then
               foreach i ( /etc/profile.d/*.csh )
                   source $i
               end
          endif
	endif
	## for JAVA
	#setenv JAVA_HOME /usr/local/j2sdk1.4.0
	#setenv CLASSPATH ".:$JAVA_HOME/lib/tools.jar"
	#if( $SHLVL == 1 ) then
	#  set path = ( $path $JAVA_HOME/jre/bin $JAVA_HOME/bin )
	#endif
endif

if ($?SSH_CLIENT && ! $?SSH_TTY) setenv LANG C

# I had problems with the backspace key installed by 'tset', but you might want
# to try it anyway, instead to the 'setenv term.....' below it.
# eval `tset -sQ "$term"`
# setenv term linux
# if ! $?TERM setenv TERM linux
# Set to "linux" for unknown term type:
if ! ${?TERM} setenv TERM linux
if ("x.${TERM}" == "x.") setenv TERM linux
if ("x.${TERM}" == "x.unknown") setenv TERM linux


# Set the default shell prompt:
set prompt = "%m:%~%# "

# Set up the LS_COLORS environment variable for color ls output:
#eval `dircolors -t`

# Notify user of incoming mail.  This can be overridden in the user's
# local startup file (~/.login)
#biff y
#if ( { tty --silent } ) then >& /dev/null
#  echo "";/usr/games/bin/fortune;echo ""
#endif
