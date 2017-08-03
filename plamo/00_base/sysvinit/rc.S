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
# grep -q devtmpfs /proc/filesystems \
#     || mount -w -n -o mode=0755 -t tmpfs /dev /dev

mount -w -n -t devtmpfs /dev /dev

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
mount -w -n -t tmpfs /run /run
mkdir /run/udev
echo "Starting udev..."

#/sbin/udevd --debug --daemon
if [ ! -f /etc/udev/hwdb.bin ]; then
    /sbin/udevadm -hwdb update
fi
/sbin/udevd --daemon
/sbin/udevadm monitor --environment > /dev/.udev.log 2>&1 &
/sbin/udevadm trigger --action=add --type=subsystems
/sbin/udevadm trigger --action=add --type=devices
/sbin/udevadm settle
# /bin/kill udevadm

if [ -x /sbin/hwclock ]; then
    # Setup timezone for now.
    /sbin/hwclock --hctosys --utc
fi

/sbin/mount -w -n -o remount /

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
    echo "plamolinux.linet.jp" > /etc/HOSTNAME
fi
HOST=`cat /etc/HOSTNAME`
HOST=${HOST%%.*}
echo "$HOST."
/bin/hostname "$HOST"

# Suppless system logs displayed into console.
#if [ -x /sbin/rsyslogd ]; then
#    echo "*.info /bootlog" > /bootlog.conf
#    if [ ! -d /var/run ]; then
#	# Workaround when /var is on non-root partition.
#	mkdir /var/run
#	/sbin/rsyslogd -f /bootlog.conf
#        sleep 1
#	mv -f /var/run/rsyslogd.pid /
#	rmdir /var/run
#    else
#	/sbin/rsyslogd -f /bootlog.conf
#        sleep 1
#	mv -f /var/run/rsyslogd.pid /
#    fi
#fi
/sbin/rsyslogd

# Set CPU frequency with the support of Speedstep technology.
#if [ ! -d /sys/devices/system/cpu/cpu0/cpufreq -a -f /proc/cpufreq ]; then
#    # Old API needs setting the default governer to "performance".
#    echo -n "0%50%100%performance" > /proc/cpufreq
#fi

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
if [ ! -f /var/log/wtmp ]; then
    cat /dev/null > /var/log/wtmp
    /bin/chown root:utmp /var/log/wtmp
    /bin/chmod 664 /var/log/wtmp
fi
    
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


# 本来、このヘンは rc.[inet1,local]あたりですべき処理だけど、rc.[S|M]の
# 全面見直しが予定されているので、とりあえずここで実行しておく。

/sbin/link_rootdev.sh

if [ -x /usr/bin/ssh-keygen ] ; then
    if [ ! -f /etc/ssh/ssh_host_key ] ; then
	echo "/etc/ssh/ssh_host_key doesn't exist, generating..."
	ssh-keygen -t rsa1 -f /etc/ssh/ssh_host_key -N ""
    fi
    if [ ! -f /etc/ssh/ssh_host_dsa_key ] ; then
	echo "/etc/ssh/ssh_host_dsa_key doesn't exist, generating..."
	ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ""
    fi
    if [ ! -f /etc/ssh/ssh_host_rsa_key ] ; then
	echo "/etc/ssh/ssh_host_rsa doesn't exist, generating..."
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ""
    fi
    if [ ! -f /etc/ssh/ssh_host_ecdsa_key ] ; then
	echo "/etc/ssh/ssh_host_ecdsa doesn't exist, generating..."
	ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ""
    fi
    if [ ! -f /etc/ssh/ssh_host_ed25519_key ] ; then
	echo "/etc/ssh/ssh_host_ed25519 doesn't exist, generating..."
	ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ""
    fi
fi

