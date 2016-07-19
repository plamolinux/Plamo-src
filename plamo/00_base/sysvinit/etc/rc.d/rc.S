#!/bin/sh
#
# /etc/rc.d/rc.S: Initialize system.
#
# シングルユーザモード・マルチユーザモード共通の初期化を行なう
#
# 初期化内容:
# udev・ローカルファイルシステム・ホスト名・RTC・syslogd/klogd(仮起動)・
# CPUクロック(仮設定)・ISAPnP・カーネルモジュール・フレームバッファ・unicon・
# コンソールフォント・キーマップ・motd/issue・シリアルポート
#

# Set the path.
PATH=/sbin:/usr/sbin:/bin:/usr/bin

mount -w -n -t proc /proc /proc
mount -w -n -t sysfs /sys /sys
# devtmpfs is mounted auto-magically so don't need to mount /dev
grep -q devtmpfs /proc/filesystems \
    || mount -w -n -o mode=0755 -t tmpfs /dev /dev
mkdir /dev/pts
mkdir /dev/shm
chmod 1777 /dev/shm

# ln -s /bin/true /dev/.hotplug.agent

mknod /dev/null -m 0666 c 1 3
mknod /dev/unikey -m 0644 c 10 202
mknod /dev/ppp -m 0660 c 108 0
mknod /dev/loop0 -m 0660 b 7 0
chgrp disk /dev/loop0
mknod /dev/md0 -m 0660 b 9 0
chgrp disk /dev/md0
mknod /dev/fd0 -m 0660 b 2 0
chgrp floppy /dev/fd0
ln -sf /proc/self/fd /dev/fd
ln -sf /proc/self/fd/0 /dev/stdin
ln -sf /proc/self/fd/1 /dev/stdout
ln -sf /proc/self/fd/2 /dev/stderr

# Start udev.
echo "Starting udev..."

/sbin/udevd --daemon
/sbin/udevadm monitor --environment > /dev/.udev.log 2>&1 &
/sbin/udevadm trigger --action=add --type=subsystems
/sbin/udevadm trigger --action=add --type=devices
/sbin/udevadm settle
/bin/killall udevadm

if [ -x /sbin/hwclock ]; then
    # Setup timezone for now.
    /sbin/hwclock --hctosys --utc
fi

# disable unused hibernation data
if [ -x /etc/rc.d/hibernate-cleanup.sh ]; then
  /etc/rc.d/hibernate-cleanup.sh start
fi

# Enable swapping.
/sbin/swapon -a

# Start update.
#/sbin/update -s 60 -f 10 &

# Test to see if the root partition is read-only, like it ought to be.
if /bin/touch /.writetest > /dev/null 2>&1; then	# Read-write
    /bin/rm -f /.writetest
    # No warn for ReiserFS or UMSDOS.
    if [ -n "`/sbin/mount -t umsdos`" ]; then
	ROOTTYPE=umsdos
    elif [ -z "`/sbin/mount -t reiserfs`" ]; then
	cat <<EOF

*** ERROR: Root partition is mounted as read-write; cannot check! ***

Root partition must be mounted as read only to be checked properly.

Add `ro' flag to the `kernel' line of GRUB configuration (it can be done by
typing `e' in grub menu or by editing /etc/grub.conf), or modify the kernel
with `rdev' command:

        rdev -R <kernel-image> 1

This will fix the problem and eliminate this annoying message. :^)

EOF
	echo -n "Press ENTER to continue: "
	read junk
    fi
else	# Read-only
    # /bin/rm -f /.writetest
    if [ -z "`grep reiserfs /proc/mounts`" ]; then
	if [ -f /fastboot ]; then
	    echo "FAST-BOOT, skipping fsck."
	else
	    # Check the integrity of root filesystem.
	    echo "Checking root filesystem..."
	    /sbin/fsck -a -C /
	    # If there was a failure, drop into single-user mode.
	    if [ $? -gt 1 ]; then
		cat <<EOF

*************************************************
fsck returned error - repair manually and REBOOT!
*************************************************

Note that root partition is currently mounted read-only.
To modify it, remember to remount it read-write with:

        mount -n -o remount,rw /

EOF
		/sbin/sulogin
		echo "Exited from the single-user shell."
		echo -n "Press ENTER to REBOOT: "
		read junk
		reboot
	    fi
	fi
    fi
    # Remount the root filesystem in read-write mode.
    echo "Remounting root filesystem with read-write enabled..."
    /sbin/mount -w -n -o remount /
    if [ $? -gt 0 ]; then
	cat << EOF

*** Remounting root partition as read-write failed! ***

If you are using the UMSDOS filesystem, you *MUST* mount the root partition as
read-write.

Add `rw' flag to the `kernel' line of GRUB configuration (it can be done by
typing `e' in grub menu or by editing /etc/grub.conf), or modify the kernel
with `rdev' command:

        rdev -R <kernel-image> 0

Reboot immediately and use one of the above methods.

EOF
	echo -n "Press ENTER to continue: "
	read junk
    fi
fi

# move udev log
/bin/mv -f /dev/.udev.log /var/log/udev.log

# Clean /etc/mtab* and create new one with a root entry.
/bin/rm -f /etc/mtab*
/sbin/mount -f -v -o remount /
/sbin/mount -f -v /proc
/sbin/mount -f -v /sys
/sbin/mount -f -v /dev

# copy the rules generated before / was mounted read-write
for file in /dev/.udev/tmp-rules--*; do
  dest=${file##*tmp-rules--}
  [ "$dest" = '*' ] && break
  cat $file >> /etc/udev/rules.d/$dest
  rm -f $file
done

# Set the hostname.
echo -n "Set the hostname: "
if [ ! -r /etc/HOSTNAME ]; then
    # If there's no /etc/HOSTNAME, fall back on this default.
    echo "darkstar.frop.org" > /etc/HOSTNAME
fi
HOST=`cat /etc/HOSTNAME`
HOST=${HOST%%.*}
echo "$HOST."
/bin/hostname "$HOST"

# Configure the system clock.
# This can be changed if your system keeps GMT.
#if [ -x /sbin/hwclock ]; then
#    /sbin/hwclock --adjust
#    /sbin/hwclock --hctosys
#fi

# Suppless system logs displayed into console.
if [ -x /sbin/rsyslogd ]; then
    echo "*.info /bootlog" > /bootlog.conf
    if [ ! -d /var/run ]; then
	# Workaround when /var is on non-root partition.
	mkdir /var/run
	/sbin/rsyslogd -m 0 -f /bootlog.conf
        sleep 1
	mv -f /var/run/rsyslogd.pid /
	rmdir /var/run
    else
	/sbin/rsyslogd -m 0 -f /bootlog.conf
        sleep 1
	mv -f /var/run/rsyslogd.pid /
    fi
fi

# Set CPU frequency with the support of Speedstep technology.
#if [ ! -d /sys/devices/system/cpu/cpu0/cpufreq -a -f /proc/cpufreq ]; then
#    # Old API needs setting the default governer to "performance".
#    echo -n "0%50%100%performance" > /proc/cpufreq
#fi

# Configure the ISA PnP cards.
if [ -x /sbin/isapnp -a -r /etc/isapnp.conf ]; then
    echo "Configuring ISA PnP cards..."
    /sbin/isapnp /etc/isapnp.conf
fi

# Initializing kernel modules stuff and load necessary modules by hand.
# Any recent modules are auto-probed by murasaki.
if [ -x /etc/rc.d/rc.modules ]; then
    . /etc/rc.d/rc.modules
fi

# Clean up /tmp and /media directory.
# /bin/rm -rf /tmp /media
if [ ! -d /tmp ]; then
    mkdir /tmp
fi
if [ ! -d /media ]; then
    mkdir /media
fi
/sbin/mount -v -o mode=0755 -t tmpfs /media /media
/sbin/mount -v -t tmpfs /tmp /tmp
chmod 1777 /tmp
mkdir /tmp/.ICE-unix
chmod 1777 /tmp/.ICE-unix

# Check the integrity of the other filesystems.
if [ -n "`/sbin/mount -afnvt ext2,ext3,ext4,umsdos 2> /dev/null`" ]; then
    if [ ! -f /fastboot ]; then
	echo "Checking all file systems..."
	/sbin/fsck -R -A -a -C
	# If there was a failure, drop into single-user mode.
	if [ $? -gt 1 ]; then
	    cat <<EOF

**************************************
fsck returned error - repair manually!
**************************************

EOF
	    /sbin/sulogin
	    echo "Exited from the single-user shell."
	    echo -n "Press ENTER to continue: "
	    read junk
	fi
    fi
fi

# Mount local filesystems in fstab.
# But not NFS because TCP/IP is not yet configured.
echo "Mounting local filesystems..."
/sbin/mount -avt nonfs,proc,sysfs,tmpfs,nocifs

if grep -q usbfs /proc/filesystems && ! grep -q usbfs /etc/mtab; then
    mount -t usbfs usbfs /proc/bus/usb
    sleep 3
fi

if [ -d /sys/firmware/efi ]; then
    mount -t efivarfs efivarfs /sys/firmware/efi/efivars
fi

# Clean up temporary files on the /etc and /var volume.
/bin/rm -f /etc/nologin /etc/shutdownpid /fastboot
/bin/rm -f /var/run/utmp /var/run/*.pid /var/run/*/*pid /var/run/gpm* /var/run/news/*

# Looks like we have to create this.
cat /dev/null > /var/run/utmp
/bin/chown root:utmp /var/run/utmp
/bin/chmod 664 /var/run/utmp

# 起動パラメータに "vga16" を追加するとVGA16フレームバッファを使用
# それ以外を用いる場合は "vga" 等で適宜初期化のこと

# Set VGA framebuffer if necessary.
chk_parm () {
    /usr/bin/sed -e "
	s/\(^\|.* \)$1=\([^ ]*\).*\$/\2/
	t
	s/\(^\|.* \)\($1\)\( .*\|\$\)/\2/
	t
	d" /proc/cmdline
}
look_mod () {
    [ -n "$(find /lib/modules/`uname -r` -name $1.ko)" ]
}
if look_mod vga16fb && [ -n "`chk_parm vga16`" ]; then
    /sbin/modprobe vga16fb
fi

# 起動パラメータに "unicon=エンコード" を追加すると unicon を使用
# (フレームバッファ使用時のみ)

# Set console encoding mode.
UCENC="`chk_parm unicon`"
if look_mod encode-$UCENC &&
   [ -x /usr/bin/uniconctrl -a -n "$UCENC" -a -n "`cat /proc/fb`" ]; then
    echo "Set console encoding mode: $UCENC."
    /sbin/modprobe unikey
    /sbin/modprobe encode-$UCENC
    /usr/bin/loadunimap /usr/share/unicon/direct.uni
    TTYS="`/usr/bin/awk -F'[: ]+' '/^[^#].*:respawn:/{print $6}' /etc/inittab`"
    for t in $TTYS; do
	/usr/bin/uniconctrl --$UCENC $t
    done
fi

# Load a custom screen font if the user has an rc.font script.
if [ -x /etc/rc.d/rc.font ]; then
    . /etc/rc.d/rc.font
fi

# Load a custom keymap if the user has an rc.keymap script.
if [ -x /etc/rc.d/rc.keymap ]; then
    . /etc/rc.d/rc.keymap
fi

# We need to update any files added in DOS if using UMSDOS.
if [ "$ROOTTYPE" = "umsdos" ]; then
    echo "Synchronizing UMSDOS directory structure..."
    umssync -r99 -v- /
fi

# /etc/issue と /etc/motd をテンプレート (*.in) から生成
# テンプレート中、%s→システム名 / %r→システムリリース / %v→OSバージョン /
# %m→ハードウェア種別 / %p→プロセッサ種別 に、それぞれ置換される

# Generate the /etc/issue and /etc/motd.
UNS=`uname -s`; UNR=`uname -r`; UNV=`uname -v`; UNM=`uname -m`; UNP=`uname -p`
makemsg () {
    /usr/bin/sed -e "s/%s/$UNS/g" -e "s/%r/$UNR/g" -e "s/%v/$UNV/g" \
		 -e "s/%m/$UNM/g" -e "s/%p/$UNP/g" $1.in > $1
}
makemsg /etc/issue
makemsg /etc/motd

# Run serial port setup script:
# (CAREFUL! This can make some systems hang if the rc.serial script isn't
# set up correctly. If this happens, you may have to edit the file from a
# boot disk)
#
# . /etc/rc.d/rc.serial
