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


# Tell the viewers the system is ready.
echo
echo -n "The system is ready."

sync

# All done.
