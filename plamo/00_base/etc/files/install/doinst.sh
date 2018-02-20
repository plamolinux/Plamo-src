( cd etc ; rm -rf issue.net )
( cd etc ; ln -sf issue issue.net )
( cd etc ; rm -rf skel )
( cd etc ; ln -sf template/Default skel )
( cd etc ; rm -rf HOSTNAME )
( cd etc ; ln -sf hostname HOSTNAME )
( cd etc ; rm -rf mtab )
( cd etc ; ln -sf /proc/self/mounts )
( cd etc/template/Source ; rm -rf .xprofile )
( cd etc/template/Source ; ln -sf .xinitrc .xprofile )
( cd var/log ; rm -rf utmp )
( cd var/log ; ln -sf /var/run/utmp utmp)
if [ ! -r etc/passwd ] ; then
  cp etc/npasswd etc/passwd
fi
if [ ! -r etc/passwd.OLD ] ; then
  mv etc/npasswd etc/passwd.OLD
else
  rm etc/npasswd
fi
if [ ! -r etc/shadow ] ; then
  mv etc/nshadow etc/shadow
else
  rm etc/nshadow
fi
if [ ! -r etc/group ] ; then
  mv etc/ngroup etc/group
else
  rm etc/ngroup
fi
if [ ! -r etc/hosts ] ; then
  mv etc/hosts-incoming etc/hosts
else
  rm -f etc/hosts-incoming
fi
if [ ! -r etc/networks ] ; then
  mv etc/networks-incoming etc/networks
else
  rm -f etc/networks-incoming
fi
#%% begin initialize
etc/template/mkdefaultenv.sh etc/template/Source 1 12 14 16 1> /dev/null
#%% end
