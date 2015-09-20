#!/bin/sh
#
# This resets the temporary directory to /tmp on the floppy in the
# case where it's been changed during a previous 'setup' run.  This
# should be done before $TMP is cleared.
#

TMPLINK="`/bin/ls -l /var/log/setup/tmp | cut -b56- | cut -f 3 -d ' '`"
if [ -L /var/log/setup/tmp -a ! "$TMPLINK" = "/tmp" ]; then
  ( cd /var/log/setup
    rm tmp
    ln -sf /tmp tmp )
fi
