#!/bin/sh

target=$1

# package=`ls /var/log/packages | grep "^$target$"`
# if [ "$package.x" != ".x" ]; then
#   echo "$package"
#  exit
# fi

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/games

if [ -d /etc/profile.d ]; then
   for i in  /etc/profile.d/*.sh  ; do
	source $i
   done
fi

#echo "PATH : $PATH"

result=`/usr/bin/which $target 2>/dev/null`
echo "$result"
