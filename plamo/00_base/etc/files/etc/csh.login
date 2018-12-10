# /etc/csh.login: This file contains login defaults used by csh and tcsh.

# Set up some environment variables:
if ($?prompt) then
	umask 022
	set cdpath = ( /var/spool )
	set notify
	set history = 100
#	set complete = igncase
#        setenv MANPATH /usr/share/man:/usr/local/man:/usr/man
	setenv HOSTNAME "`cat /etc/HOSTNAME`"
	setenv LESS "-M"
	setenv LESSOPEN "|lesspipe.sh %s"
	setenv LANG ja_JP.UTF-8
        setenv PKG_CONFIG_PATH "/usr/lib/pkgconfig:/usr/share/pkgconfig"
	if( $SHLVL == 1 ) then
	  set path = ( /usr/local/bin /bin /usr/bin )
          if ( -d /etc/profile.d ) then
               foreach i ( /etc/profile.d/*.csh )
                   source $i
               end
          endif
	endif
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
