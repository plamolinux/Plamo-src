#!/bin/sh
#
# Like, the space is *really* getting tight on these install disks!
# Can you believe it?  Anyway, we can avoid many problems by migrating
# the $TMP directory onto the install partition ASAP.  So, this script
# is run right after the TARGET partition is configured and mounted
# under /mnt.
#

TMPLINK="`/bin/ls -l /var/log/setup/tmp | cut -b56- | cut -f 3 -d ' '`"
if [ -L /var/log/setup/tmp -a "$TMPLINK" = "/tmp" ]; then
  if mount | grep " on /mnt " 1> /dev/null 2> /dev/null ; then # /mnt mounted
    TYPE="`mount | grep " on /mnt " | cut -f 5 -d ' '`"
    if [ "$TYPE" = "umsdos" ]; then
      LINKDIR=/mnt/linux/var/log/setup/tmp
    else
      LINKDIR=/mnt/var/log/setup/tmp
    fi
    if [ ! -d $LINKDIR ]; then
      mkdir -p $LINKDIR
      chmod 700 $LINKDIR
    fi
    ( cd /var/log/setup
      rm tmp
      ln -sf $LINKDIR tmp )
    rm -f $LINKDIR/SeT*
    mv /tmp/SeT* $LINKDIR
  fi
fi
