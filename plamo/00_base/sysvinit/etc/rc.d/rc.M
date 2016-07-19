#!/bin/sh
#
# rc.M: Initialize for multi-user mode.
#
# マルチユーザモードの初期化を行う
#
# 初期化内容:
# ライブラリ・CD-ROMマウント・ネットワーク・HotPlug(デバイス自動認識)・PCMCIA・
# ALSAミキサ・syslogd/klogd・rc.inet2・NFS・autofs・lpd・apmd・crond・atd・
# 日本語入力システム(Canna・Wnn・SKKserv・ATOKx2)・ndtpd・PostgreSQL・Apache・
# netatalk・Samba・xfs・gpm・init.d以下・パッケージ初期化・rc.local
#

# Tell the viewers what's going to happen...
echo "Going multiuser..."

# Remove stale locks and junk files (must be done after mount -a!).
rm -f /var/lock/* /var/spool/uucp/LCK..* /core > /dev/null 2>&1
for d in /var/lock/* ; do
  rm -f $d/* $d/.* > /dev/null 2>&1
done

# Ensure basic filesystem permissions sanity.
chmod 755 /
chmod 1777 /tmp /var/tmp

# Update all the shared library links automatically.
#echo "Updating shared library links..."
#ldconfig

# Screen blanks after 15 minutes idle time.
setterm -blank 15

# Look for a CD-ROM and mount it on /cdrom if any.
if [ -x /etc/rc.d/rc.cdrom ] ; then
  . /etc/rc.d/rc.cdrom
fi

# Initialize ip6tables.
#if [ -x /usr/sbin/ip6tables -a -f /etc/sysconfig/ip6tables ] ; then
#  ip6tables-restore /etc/sysconfig/ip6tables
#fi

chk_link () {
  [ "`ls -l $1 | sed 's/.*-> *//'`" = $2 ]
}

# Only for tradnet.
if chk_link /etc/rc.d/rc.inet1 rc.inet1.tradnet ; then
  # Initialize network interfaces.
  if [ -x /etc/rc.d/rc.inet1 ] ; then
    . /etc/rc.d/rc.inet1
  fi
fi

# Initialize sysctl.
if [ -x /sbin/sysctl -a -f /etc/sysctl.conf ] ; then
  sysctl -p /etc/sysctl.conf
fi

# Initialize ALSA sound mixer.
look_mod () {
  [ -n "$(find /lib/modules/`uname -r` -name $1.ko)" ]
}
if [ -d /proc/asound ] ; then
  echo "Initializing ALSA sound mixer..."
  if look_mod snd-pcm-oss ; then
    modprobe snd-pcm-oss
  fi
  if look_mod snd-seq-oss ; then
    modprobe snd-seq-oss
  fi
  if [ -x /usr/sbin/alsactl ] ; then
    if [ -s /etc/asound.state ] ; then
      alsactl restore
    else
      alsactl init
      alsactl store
    fi
  fi
fi

echo "Starting services:"

# Start the rsyslogd daemon.
if [ -r /rsyslogd.pid ] ; then
  kill `cat /rsyslogd.pid`
  sleep 1
  rm -f /rsyslogd.pid /bootlog.conf
fi
if [ -f /bootlog ] ; then
  if [ -f /var/adm/bootlog ] ; then
    rm -f /var/adm/bootlog.last.gz
    mv -f /var/adm/bootlog /var/adm/bootlog.last
    gzip /var/adm/bootlog.last
  fi
  mv -f /bootlog /var/adm
fi
if [ -x /sbin/rsyslogd ] ; then
  echo "Starting syslogd..."
  rsyslogd -m 0
fi

# Initialize the NET subsystem.
if [ -x /etc/rc.d/rc.inet1 -a -x /etc/rc.d/rc.inet2 ] ; then
  . /etc/rc.d/rc.inet2
fi

# Mount NFS filesystems in fstab.
if [ -n "`mount -anfv -t nfs 2> /dev/null`" ] ; then
  echo "Mounting NFS file systems..."
  mount -a -t nfs
fi

# Mount CIFS filesystems in fstab
if [ -n "`mount -anfv -t cifs 2> /dev/null`" ] ; then
  echo "Mounting cifs file systems..."
  mount -a -t cifs,smbfs
fi

# Start the lpd daemon.
if [ -x /usr/sbin/lpd ] ; then
  echo "Starting lpd..."
  lpd
fi

# Start the APM daemon if APM is enabled in the kernel.
#if [ -x /usr/sbin/apmd -a -r /proc/apm ] ; then
#  echo "Starting apmd..."
#  apmd
#fi

# Start at daemon (atd).
if [ -x /usr/sbin/atd ] ; then
  echo "Starting atd..."
  atd
fi

# Start Japanese conversion servers.
if [ -x /etc/rc.d/rc.sj3 ] ; then
  /etc/rc.d/rc.sj3 start
fi
if [ -x /opt/atokx2/sbin/atokx2mngdaemon ] ; then
  echo "Starting ATOKx2..."
  /opt/atokx2/sbin/atokx2mngdaemon
fi
if [ -x /usr/lib/im/htt ] ; then
  echo "Starting htt..."
  /usr/lib/im/htt &
fi
if [ -x /usr/lib64/im/htt ] ; then
  echo "Starting htt..."
  /usr/lib64/im/htt &
fi

# Start ndtpd.
if [ -x /usr/sbin/ndtpd -a -r /usr/etc/ndtpd.conf ] ; then
  echo "Starting ndtpd..."
  ndtpd
fi

# Start netatalk (a file/print server for Macintosh Appletalk).
if [ -x /etc/rc.d/rc.atalk ] ; then
  echo "Starting atalk..."
  /etc/rc.d/rc.atalk
fi

# Start X font server.
if [ -x /etc/rc.d/rc.xfs ] ; then
  echo "Starting xfs..."
  /etc/rc.d/rc.xfs start
fi

# Run the startup scripts in /etc/rc.d/init.d.
INITDANY=""
if [ -d /etc/rc.d/init.d ] ; then
  EXCLUDELIST=""
  for i in /etc/rc.d/rc.* ; do
    if [ -h $i -a -f $i ] ; then
      EXCLUDE=`ls -l $i | sed -n 's@.*init\.d/@@p'`
      [ -n "$EXCLUDE" ] && EXCLUDELIST="$EXCLUDELIST -e $EXCLUDE"
    fi
  done
  INITDLIST=`ls /etc/rc.d/init.d`
  [ -n "$EXCLUDELIST" ] && INITDLIST=`grep <<< "$INITDLIST" -v $EXCLUDELIST`
  for i in $INITDLIST ; do
    if [ -x /etc/rc.d/init.d/$i ] ; then
      if [ -z "$INITDANY" ] ; then
        echo "Starting services in /etc/rc.d/init.d:"
        INITDANY=y
      fi
      MESSAGES=`/etc/rc.d/init.d/$i start 2>&1`
      if [ -z "$MESSAGES" ] ; then
        echo "Starting $i..."
      else
        echo "$MESSAGES"
      fi
    fi
  done
fi

if [ -x /etc/rc.d/rc.once -o -n "`ls /var/log/initpkg`" ] ; then
  echo "Initializing system..."
  # Initialize system only once.
  if [ -x /etc/rc.d/rc.once ] ; then
    . /etc/rc.d/rc.once
    mv /etc/rc.d/rc.once /var/adm/rc.once
  fi
  # Run the initpkg scripts if any still.
  if [ -x /etc/rc.d/rc.initpkg ] ; then
    . /etc/rc.d/rc.initpkg
  fi
fi

#if [ -x /usr/bin/Xorg -a ! -f /etc/X11/xorg.conf ] ; then
#  echo "Making /etc/X11/xorg.conf..."
#  make_xorg.conf.sh > /dev/null 2>&1
#  echo "done."
#fi

if [ -n "`find /usr/share/info -cnewer /usr/share/info/dir`" ] ; then
  echo "Some info files are newer than dir file."
  echo "Wait for a while to recreate dir file..."
  mkinfodir
  echo "done."
fi

if [ -x /usr/bin/glib-compile-schemas ] ; then
  schemasdir=/usr/share/glib-2.0/schemas
  if [ -d $schemasdir ] ; then
    if [ ! -f $schemasdir/gschemas.compiled ] \
        || [ -n "`find $schemasdir -cnewer $schemasdir/gschemas.compiled`" ] ; then
      echo "Need re-compile gschemas.compiled"
      glib-compile-schemas $schemasdir ; touch $schemasdir/gschemas.compiled
    fi
  fi
fi

if [ -x /usr/bin/update-mime-database ] ; then
  mime_dir=/usr/share/mime
  if [ -d $mime_dir ] ; then
    if [ ! -f $mime_dir/mime.cache ] \
        || [ -n "`find $mime_dir -cnewer $mime_dir/mime.cache`" ] ; then
      echo "Need update mime.cache"
      update-mime-database $mime_dir ; touch $mime_dir/mime.cache
    fi
  fi
fi

if [ -x /usr/bin/update-desktop-database ] ; then
  apps_dir=/usr/share/applications
  if [ -d $apps_dir ] ; then
    if [ ! -f $apps_dir/mimeinfo.cache ] \
        || [ -n "`find $apps_dir -cnewer $apps_dir/mimeinfo.cache`" ] ; then
      echo "Need update mimeinfo.cache"
      update-desktop-database $apps_dir ; touch $apps_dir/mimeinfo.cache
    fi
  fi
fi

if [ -x /usr/bin/gtk-update-icon-cache ] ; then
  iconsdir=/usr/share/icons/hicolor
  if [ -d $iconsdir ] ; then
    if [ ! -f $iconsdir/icon-theme.cache ] \
        || [ -n "`find $iconsdir -cnewer $iconsdir/icon-theme.cache`" ] ; then
      echo "Need update icon-theme.cache"
      gtk-update-icon-cache -f $iconsdir ; touch $iconsdir/icon-theme.cache
    fi
  fi
fi

# Start the local setup procedure.
if [ -x /etc/rc.d/rc.local ] ; then
  . /etc/rc.d/rc.local
fi

# Tell the viewers the system is ready.
echo
echo -n "The system is ready."

sync

# All done.
