#!/bin/sh
mkdir -p $P/usr/share/man/ja_JP.UTF-8;chown root.root $P/usr/share/man/ja_JP.UTF-8
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man1;chown root.root $P/usr/share/man/ja_JP.UTF-8/man1
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man2;chown root.root $P/usr/share/man/ja_JP.UTF-8/man2
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man3;chown root.root $P/usr/share/man/ja_JP.UTF-8/man3
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man4;chown root.root $P/usr/share/man/ja_JP.UTF-8/man4
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man5;chown root.root $P/usr/share/man/ja_JP.UTF-8/man5
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man6;chown root.root $P/usr/share/man/ja_JP.UTF-8/man6
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man7;chown root.root $P/usr/share/man/ja_JP.UTF-8/man7
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man8;chown root.root $P/usr/share/man/ja_JP.UTF-8/man8
mkdir -p $P/usr/share/man/ja_JP.UTF-8/man9;chown root.root $P/usr/share/man/ja_JP.UTF-8/man9

echo -n install netatalk: AppleVolumes.default.5 .. 
install -o root -g root -m 644 manual/netatalk/man5/AppleVolumes.default.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: CMSG_ALIGN.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CMSG_ALIGN.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CMSG_DATA.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CMSG_DATA.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CMSG_FIRSTHDR.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CMSG_FIRSTHDR.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CMSG_LEN.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CMSG_LEN.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CMSG_NXTHDR.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CMSG_NXTHDR.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CMSG_SPACE.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CMSG_SPACE.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_ALLOC.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_ALLOC.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_ALLOC_SIZE.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_ALLOC_SIZE.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_AND.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_AND.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_AND_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_AND_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_CLR.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_CLR.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_CLR_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_CLR_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_COUNT.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_COUNT.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_COUNT_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_COUNT_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_EQUAL.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_EQUAL.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_EQUAL_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_EQUAL_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_FREE.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_FREE.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_ISSET.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_ISSET.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_ISSET_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_ISSET_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_OR.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_OR.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_OR_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_OR_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_SET.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_SET.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_SET_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_SET_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_XOR.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_XOR.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_XOR_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_XOR_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_ZERO.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_ZERO.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: CPU_ZERO_S.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/CPU_ZERO_S.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: DES_FAILED.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/DES_FAILED.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: FD_CLR.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/FD_CLR.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: FD_ISSET.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/FD_ISSET.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: FD_SET.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/FD_SET.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: FD_ZERO.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/FD_ZERO.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: HUGE_VAL.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/HUGE_VAL.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: HUGE_VALF.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/HUGE_VALF.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: HUGE_VALL.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/HUGE_VALL.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: INFINITY.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/INFINITY.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: MB_CUR_MAX.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/MB_CUR_MAX.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: MB_LEN_MAX.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/MB_LEN_MAX.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: NAN.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/NAN.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: _Exit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/_Exit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: __after_morecore_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__after_morecore_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __clone2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/__clone2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: __fbufsize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__fbufsize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __flbf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__flbf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __fpending.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__fpending.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __fpurge.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__fpurge.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __freadable.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__freadable.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __freading.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__freading.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __free_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__free_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __fsetlocking.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__fsetlocking.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __fwritable.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__fwritable.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __fwriting.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__fwriting.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __malloc_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__malloc_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __malloc_initialize_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__malloc_initialize_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __memalign_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__memalign_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __realloc_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__realloc_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: __setfpucw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/__setfpucw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: _exit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/_exit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: _flushlbf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/_flushlbf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: _llseek.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/_llseek.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: _newselect.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/_newselect.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: _syscall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/_syscall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: _sysctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/_sysctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: a64l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/a64l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: abort.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/abort.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: abs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/abs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: accept4.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/accept4.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: accept.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/accept.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: access.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/access.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: acct.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/acct.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: acct.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/acct.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install netatalk: achfile.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/achfile.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install acl: acl.5 .. 
install -o root -g root -m 644 manual/acl/man5/acl.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install netatalk: acleandir.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/acleandir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: acos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/acos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: acosf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/acosf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: acosh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/acosh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: acoshf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/acoshf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: acoshl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/acoshl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: acosl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/acosl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: add_key.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/add_key.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_groff: addftinfo.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/addftinfo.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: addmntent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/addmntent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_binutils: addr2line.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/addr2line.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: addseverity.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/addseverity.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: adduser.8 .. 
install -o root -g root -m 644 manual/shadow/man8/adduser.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: adjtime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/adjtime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: adjtimex.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/adjtimex.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install rp-pppoe: adsl-connect.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/adsl-connect.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: adsl-setup.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/adsl-setup.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: adsl-start.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/adsl-start.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: adsl-status.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/adsl-status.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: adsl-stop.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/adsl-stop.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: adventure.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/adventure.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install netatalk: aecho.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/aecho.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: afile.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/afile.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: afmtodit.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/afmtodit.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: afpd.conf.5 .. 
install -o root -g root -m 644 manual/netatalk/man5/afpd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install netatalk: afpd.8 .. 
install -o root -g root -m 644 manual/netatalk/man8/afpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netatalk: afppasswd.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/afppasswd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: afs_syscall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/afs_syscall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: agetty.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/agetty.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: aio.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/aio.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: aio_cancel.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_cancel.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_error.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_error.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_fsync.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_fsync.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_init.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_read.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_read.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_return.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_return.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_suspend.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_suspend.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: aio_write.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aio_write.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: alarm.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/alarm.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install sendmail: aliases.5 .. 
install -o root -g root -m 644 manual/sendmail/man5/aliases.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: aligned_alloc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/aligned_alloc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: alloc_hugepages.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/alloc_hugepages.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: alloca.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/alloca.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: alphasort.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/alphasort.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install apmd: apm.1 .. 
install -o root -g root -m 644 manual/apmd/man1/apm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install apmd: apmd.8 .. 
install -o root -g root -m 644 manual/apmd/man8/apmd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install apmd: apmsleep.1 .. 
install -o root -g root -m 644 manual/apmd/man1/apmsleep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: apple_cp.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/apple_cp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cdrecord: apple_driver.8 .. 
install -o root -g root -m 644 manual/cdrecord/man8/apple_driver.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netatalk: apple_mv.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/apple_mv.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: apple_rm.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/apple_rm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install man: apropos.1 .. 
install -o root -g root -m 644 manual/man/man1/apropos.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_binutils: ar.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/ar.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: arch.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/arch.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: arch_prctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/arch_prctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: argz.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_add.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_add.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_add_sep.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_add_sep.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_append.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_append.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_count.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_count.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_create_sep.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_create_sep.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_delete.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_delete.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_extract.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_extract.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_insert.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_insert.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_next.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_next.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_replace.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_replace.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: argz_stringify.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/argz_stringify.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: arithmetic.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/arithmetic.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: arm_fadvise64_64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/arm_fadvise64_64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: arm_fadvise.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/arm_fadvise.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: arm_sync_file_range.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/arm_sync_file_range.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: armscii-8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/armscii-8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: arp.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/arp.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install net-tools: arp.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/arp.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_binutils: as.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/as.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ascii.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/ascii.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: asctime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asctime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asctime_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asctime_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asinf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asinf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asinh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asinh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asinhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asinhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asinhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asinhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asinl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asinl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: asprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/asprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: assert.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/assert.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: assert_perror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/assert_perror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install at: at.allow.5 .. 
install -o root -g root -m 644 manual/at/man5/at.allow.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install at: at.1 .. 
install -o root -g root -m 644 manual/at/man1/at.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: atalk.4 .. 
install -o root -g root -m 644 manual/netatalk/man4/atalk.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install netatalk: atalk_aton.3 .. 
install -o root -g root -m 644 manual/netatalk/man3/atalk_aton.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netatalk: atalkd.conf.5 .. 
install -o root -g root -m 644 manual/netatalk/man5/atalkd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install netatalk: atalkd.8 .. 
install -o root -g root -m 644 manual/netatalk/man8/atalkd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: atan2.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atan2.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atan2f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atan2f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atan2l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atan2l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atan.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atan.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atanh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atanh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atanhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atanhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atanhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atanhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atanl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atanl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: atc.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/atc.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install at: atd.8 .. 
install -o root -g root -m 644 manual/at/man8/atd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: atexit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atexit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atoi.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atoi.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atol.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atol.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atoll.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atoll.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: atoq.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/atoq.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install at: atq.1 .. 
install -o root -g root -m 644 manual/at/man1/atq.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install at: atrm.1 .. 
install -o root -g root -m 644 manual/at/man1/atrm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install at: atrun.8 .. 
install -o root -g root -m 644 manual/at/man8/atrun.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: auth_destroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/auth_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: authnone_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/authnone_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: authunix_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/authunix_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: authunix_create_default.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/authunix_create_default.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install autofs: auto.master.5 .. 
install -o root -g root -m 644 manual/autofs/man5/auto.master.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install expect: autoexpect.1 .. 
install -o root -g root -m 644 manual/expect/man1/autoexpect.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install autofs: autofs.5 .. 
install -o root -g root -m 644 manual/autofs/man5/autofs.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install autofs: autofs.8 .. 
install -o root -g root -m 644 manual/autofs/man8/autofs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install autofs: automount.8 .. 
install -o root -g root -m 644 manual/autofs/man8/automount.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: b2sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/b2sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: backgammon.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/backgammon.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: backtrace.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/backtrace.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: backtrace_symbols.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/backtrace_symbols.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: backtrace_symbols_fd.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/backtrace_symbols_fd.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: badblocks.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/badblocks.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: banner.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/banner.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_coreutils: base32.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/base32.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: base64.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/base64.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: basename.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/basename.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: basename.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/basename.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: basenc.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/basenc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_bash: bash.1 .. 
install -o root -g root -m 644 manual/GNU_bash/man1/bash.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_bash: bashbug.1 .. 
install -o root -g root -m 644 manual/GNU_bash/man1/bashbug.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install at: batch.1 .. 
install -o root -g root -m 644 manual/at/man1/batch.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: battlestar.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/battlestar.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_bc: bc.1 .. 
install -o root -g root -m 644 manual/GNU_bc/man1/bc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: bcd.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/bcd.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: bcmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bcmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: bcopy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bcopy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: bdflush.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/bdflush.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: be16toh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/be16toh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: be32toh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/be32toh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: be64toh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/be64toh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: biff.1 .. 
install -o root -g root -m 644 manual/netkit/man1/biff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: bind.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/bind.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: bindresvport.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bindresvport.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: blkid.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/blkid.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: blockdev.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/blockdev.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: boot.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/boot.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: bootparam.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/bootparam.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install netkit: bootparamd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/bootparamd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: bootparams.5 .. 
install -o root -g root -m 644 manual/netkit/man5/bootparams.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: break.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/break.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: brk.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/brk.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install bs: bs.6 .. 
install -o root -g root -m 644 manual/bs/man6/bs.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: bsd_signal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bsd_signal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: bsearch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bsearch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: bstring.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bstring.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: btowc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/btowc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: btree.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/btree.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_bash: builtins.1 .. 
install -o root -g root -m 644 manual/GNU_bash/man1/builtins.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bunzip2.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bunzip2.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: byteorder.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/byteorder.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bzip2: bzcat.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzcat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzcmp.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzcmp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzdiff.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzdiff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzegrep.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzegrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: bzero.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/bzero.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bzip2: bzexe.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzexe.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzfgrep.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzfgrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzgrep.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzgrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzip2.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzip2.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzip2recover.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzip2recover.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzless.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzless.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bzip2: bzmore.1 .. 
install -o root -g root -m 644 manual/bzip2/man1/bzmore.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: cabs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cabs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cabsf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cabsf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cabsl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cabsl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cacheflush.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/cacheflush.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: cacos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cacos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cacosf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cacosf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cacosh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cacosh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cacoshf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cacoshf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cacoshl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cacoshl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cacosl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cacosl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: caesar.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/caesar.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install util-linux: cal.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/cal.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: calloc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/calloc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: callrpc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/callrpc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install cups: cancel.1 .. 
install -o root -g root -m 644 manual/cups/man1/cancel.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: canfield.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/canfield.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: canonicalize_file_name.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/canonicalize_file_name.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: capabilities.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/capabilities.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: capget.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/capget.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: capset.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/capset.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install pcmcia-cs: cardctl.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/cardctl.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install pcmcia-cs: cardinfo.1 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man1/cardinfo.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install pcmcia-cs: cardmgr.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/cardmgr.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: carg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/carg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cargf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cargf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cargl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cargl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: casin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/casin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: casinf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/casinf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: casinh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/casinh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: casinhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/casinhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: casinhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/casinhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: casinl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/casinl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: cat.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/cat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: catan.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catan.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catanh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catanh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catanhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catanhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catanhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catanhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catanl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catanl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catclose.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catclose.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catgets.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catgets.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: catopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/catopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cbc_crypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cbc_crypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cbrt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cbrt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cbrtf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cbrtf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cbrtl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cbrtl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_gcc: cccp.1 .. 
install -o root -g root -m 644 manual/GNU_gcc/man1/cccp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ccos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ccos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ccosf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ccosf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ccosh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ccosh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ccoshf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ccoshf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ccoshl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ccoshl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ccosl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ccosl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install cdparanoia: cdparanoia.1 .. 
install -o root -g root -m 644 manual/cdparanoia/man1/cdparanoia.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cdrecord: cdrecord.1 .. 
install -o root -g root -m 644 manual/cdrecord/man1/cdrecord.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ceil.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ceil.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ceilf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ceilf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ceill.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ceill.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cexp2.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cexp2.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cexp2f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cexp2f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cexp2l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cexp2l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cexp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cexp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cexpf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cexpf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cexpl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cexpl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: cfdisk.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/cfdisk.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: cfgetispeed.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfgetispeed.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cfgetospeed.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfgetospeed.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cfmakeraw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfmakeraw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cfree.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfree.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: cfscores.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/cfscores.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: cfsetispeed.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfsetispeed.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cfsetospeed.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfsetospeed.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cfsetspeed.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cfsetspeed.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install acl: chacl.1 .. 
install -o root -g root -m 644 manual/acl/man1/chacl.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: chage.1 .. 
install -o root -g root -m 644 manual/shadow/man1/chage.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: charmap.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/charmap.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: charsets.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/charsets.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install ppp: chat.8 .. 
install -o root -g root -m 644 manual/ppp/man8/chat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: chattr.1 .. 
install -o root -g root -m 644 manual/e2fsprogs/man1/chattr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: chcon.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/chcon.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: chdir.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/chdir.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: chfn.1 .. 
install -o root -g root -m 644 manual/shadow/man1/chfn.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: chgrp.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/chgrp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: chmod.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/chmod.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: chmod.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/chmod.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: chown32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/chown32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: chown.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/chown.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: chown.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/chown.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: chpasswd.8 .. 
install -o root -g root -m 644 manual/shadow/man8/chpasswd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: chroot.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/chroot.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: chroot.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/chroot.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: chsh.1 .. 
install -o root -g root -m 644 manual/shadow/man1/chsh.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: ci.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/ci.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: cimag.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cimag.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cimagf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cimagf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cimagl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cimagl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: cksum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/cksum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: clearenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clearenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clearerr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clearerr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clearerr_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clearerr_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_broadcast.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_broadcast.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_call.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_call.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_control.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_control.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_destroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_freeres.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_freeres.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_geterr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_geterr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_pcreateerror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_pcreateerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_perrno.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_perrno.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_perror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_perror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_spcreateerror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_spcreateerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_sperrno.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_sperrno.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnt_sperror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnt_sperror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clntraw_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clntraw_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clnttcp_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clnttcp_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clntudp_bufcreate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clntudp_bufcreate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clntudp_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clntudp_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clock.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clock.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clock_adjtime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clock_adjtime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clock_getcpuclockid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clock_getcpuclockid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clock_getres.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clock_getres.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clock_gettime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clock_gettime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clock_nanosleep.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clock_nanosleep.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clock_settime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clock_settime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clog10.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog10.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clog10f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog10f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clog10l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog10l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clog2.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog2.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clog2f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog2f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clog2l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog2l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clog.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clog.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clogf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clogf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clogl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/clogl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: clone2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clone2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clone3.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clone3.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: clone.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/clone.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: close.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/close.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: closedir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/closedir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: closelog.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/closelog.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install gnumaniak: cmp.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/cmp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: cmsg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cmsg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_rcs: co.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/co.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: col.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/col.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: colcrt.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/colcrt.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: colrm.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/colrm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: column.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/column.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: com_err.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/com_err.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: comm.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/comm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: compile_et.1 .. 
install -o root -g root -m 644 manual/e2fsprogs/man1/compile_et.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: complex.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/complex.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install netkit: comsat.8 .. 
install -o root -g root -m 644 manual/netkit/man8/comsat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: confstr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/confstr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: conj.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/conj.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: conjf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/conjf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: conjl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/conjl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: connect.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/connect.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: console_codes.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/console_codes.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install quota: convertquota.8 .. 
install -o root -g root -m 644 manual/quota/man8/convertquota.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install mirrordir: copydir.1 .. 
install -o root -g root -m 644 manual/mirrordir/man1/copydir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: copysign.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/copysign.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: copysignf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/copysignf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: copysignl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/copysignl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: core.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/core.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_coreutils: coreutils.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/coreutils.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: cos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cosf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cosf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cosh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cosh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: coshf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/coshf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: coshl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/coshl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cosl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cosl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cp1251.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/cp1251.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: cp1252.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/cp1252.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_coreutils: cp.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/cp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_cpio: cpio.1 .. 
install -o root -g root -m 644 manual/GNU_cpio/man1/cpio.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: cpow.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cpow.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cpowf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cpowf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cpowl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cpowl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_gcc: cpp.1 .. 
install -o root -g root -m 644 manual/GNU_gcc/man1/cpp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: cproj.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cproj.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cprojf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cprojf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cprojl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cprojl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cpuid.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/cpuid.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: creal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/creal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: crealf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/crealf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: creall.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/creall.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: creat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/creat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: create_module.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/create_module.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: credentials.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/credentials.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install bsd-games: cribbage.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/cribbage.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install cron: cron.8 .. 
install -o root -g root -m 644 manual/cron/man8/cron.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install cron: crontab.1 .. 
install -o root -g root -m 644 manual/cron/man1/crontab.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cron: crontab.5 .. 
install -o root -g root -m 644 manual/cron/man5/crontab.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: crypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/crypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: crypt_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/crypt_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csinf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csinf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csinh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csinh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csinhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csinhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csinhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csinhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csinl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csinl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: csplit.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/csplit.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: csqrt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csqrt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csqrtf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csqrtf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: csqrtl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/csqrtl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctan.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctan.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctanh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctanh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctanhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctanhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctanhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctanhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctanl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctanl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctermid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctermid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ctime_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ctime_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: ctrlaltdel.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/ctrlaltdel.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ncurses: curs_window.3 .. 
install -o root -g root -m 644 manual/ncurses/man3/curs_window.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: cuserid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/cuserid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: cut.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/cut.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cvsup: cvpasswd.1 .. 
install -o root -g root -m 644 manual/cvsup/man1/cvpasswd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cvsup: cvsup.1 .. 
install -o root -g root -m 644 manual/cvsup/man1/cvsup.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cvsup: cvsupd.8 .. 
install -o root -g root -m 644 manual/cvsup/man8/cvsupd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: daemon.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/daemon.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: date.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/date.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: daylight.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/daylight.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: db.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/db.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dbopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dbopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_bc: dc.1 .. 
install -o root -g root -m 644 manual/GNU_bc/man1/dc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: dd.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/dd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ddp.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/ddp.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install e2fsprogs: debugfs.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/debugfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install reiserfsprogs: debugreiserfs.8 .. 
install -o root -g root -m 644 manual/reiserfsprogs/man8/debugreiserfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ucd-snmp: default_store.3 .. 
install -o root -g root -m 644 manual/ucd-snmp/man3/default_store.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: delete_module.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/delete_module.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install module-init-tools: depmod.8 .. 
install -o root -g root -m 644 manual/module-init-tools/man8/depmod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: des_crypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/des_crypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: des_setparity.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/des_setparity.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: df.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/df.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install dhcp: dhclient-script.8 .. 
install -o root -g root -m 644 manual/dhcp/man8/dhclient-script.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install dhcp: dhclient.conf.5 .. 
install -o root -g root -m 644 manual/dhcp/man5/dhclient.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install dhcp: dhclient.leases.5 .. 
install -o root -g root -m 644 manual/dhcp/man5/dhclient.leases.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install dhcp: dhclient.8 .. 
install -o root -g root -m 644 manual/dhcp/man8/dhclient.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install dhcp: dhcp-eval.5 .. 
install -o root -g root -m 644 manual/dhcp/man5/dhcp-eval.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install dhcp: dhcp-options.5 .. 
install -o root -g root -m 644 manual/dhcp/man5/dhcp-options.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install dhcpcd: dhcpcd.8 .. 
install -o root -g root -m 644 manual/dhcpcd/man8/dhcpcd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install dhcp2: dhcpd.conf.5 .. 
install -o root -g root -m 644 manual/dhcp2/man5/dhcpd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install dhcp2: dhcpd.leases.5 .. 
install -o root -g root -m 644 manual/dhcp2/man5/dhcpd.leases.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install dhcp2: dhcpd.8 .. 
install -o root -g root -m 644 manual/dhcp2/man8/dhcpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install dhcp2: dhcrelay.8 .. 
install -o root -g root -m 644 manual/dhcp2/man8/dhcrelay.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install gnumaniak: diff3.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/diff3.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install gnumaniak: diff.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/diff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: difftime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/difftime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bind: dig.1 .. 
install -o root -g root -m 644 manual/bind/man1/dig.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: dir.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/dir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: dir_colors.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/dir_colors.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_coreutils: dircolors.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/dircolors.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: dirfd.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dirfd.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: dirname.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/dirname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: dirname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dirname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: div.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/div.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dl_iterate_phdr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dl_iterate_phdr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dlclose.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dlclose.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install ld.so: dlerror.3 .. 
install -o root -g root -m 644 manual/ld.so/man3/dlerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dlmopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dlmopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dlopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dlopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install ld.so: dlsym.3 .. 
install -o root -g root -m 644 manual/ld.so/man3/dlsym.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: dm.conf.5 .. 
install -o root -g root -m 644 manual/bsd-games/man5/dm.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install bsd-games: dm.8 .. 
install -o root -g root -m 644 manual/bsd-games/man8/dm.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: dmesg.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/dmesg.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: dn_comp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dn_comp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dn_expand.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dn_expand.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install net-tools: dnsdomainname.1 .. 
install -o root -g root -m 644 manual/net-tools/man1/dnsdomainname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bind: dnskeygen.1 .. 
install -o root -g root -m 644 manual/bind/man1/dnskeygen.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bind: dnsquery.1 .. 
install -o root -g root -m 644 manual/bind/man1/dnsquery.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: domainname.1 .. 
install -o root -g root -m 644 manual/net-tools/man1/domainname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install yp-tools: domainname.8 .. 
install -o root -g root -m 644 manual/yp-tools/man8/domainname.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: dpasswd.8 .. 
install -o root -g root -m 644 manual/shadow/man8/dpasswd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: dprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: drand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/drand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: drand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/drand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: drem.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/drem.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dremf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dremf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dreml.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dreml.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dsp56k.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/dsp56k.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install GNU_coreutils: du.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/du.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install pcmcia-cs: dump_cis.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/dump_cis.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: dumpe2fs.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/dumpe2fs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: dup2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/dup2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: dup3.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/dup3.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: dup.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/dup.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: duplocale.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/duplocale.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: dysize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/dysize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: e2fsck.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/e2fsck.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: e2image.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/e2image.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: e2label.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/e2label.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: eaccess.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/eaccess.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install ebtables: ebtables-legacy.8 .. 
install -o root -g root -m 644 manual/ebtables/man8/ebtables-legacy.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ecb_crypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ecb_crypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: echo.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/echo.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ecvt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ecvt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ecvt_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ecvt_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_ed: ed.1 .. 
install -o root -g root -m 644 manual/GNU_ed/man1/ed.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: edata.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/edata.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install quota: edquota.8 .. 
install -o root -g root -m 644 manual/quota/man8/edquota.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_grep: egrep.1 .. 
install -o root -g root -m 644 manual/GNU_grep/man1/egrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install eject: eject.1 .. 
install -o root -g root -m 644 manual/eject/man1/eject.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: elf.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/elf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: encrypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/encrypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: encrypt_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/encrypt_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: end.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/end.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endaliasent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endaliasent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endfsent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endfsent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endhostent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endhostent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endian.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endian.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endmntent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endmntent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endnetent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endnetent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endnetgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endnetgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endprotoent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endprotoent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endpwent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endpwent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endrpcent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endrpcent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endservent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endservent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endspent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endspent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endttyent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endttyent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endusershell.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endusershell.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endutent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endutent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: endutxent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/endutxent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: env.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/env.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: environ.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/environ.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: envz.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: envz_add.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz_add.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: envz_entry.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz_entry.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: envz_get.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz_get.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: envz_merge.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz_merge.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: envz_remove.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz_remove.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: envz_strip.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/envz_strip.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: epoll.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/epoll.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: epoll_create1.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/epoll_create1.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: epoll_create.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/epoll_create.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: epoll_ctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/epoll_ctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: epoll_pwait.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/epoll_pwait.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: epoll_wait.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/epoll_wait.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_groff: eqn.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/eqn.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: erand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erfc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erfc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erfcf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erfcf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erfcl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erfcl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erff.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erff.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: erfl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/erfl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: err.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/err.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: errno.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/errno.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: error.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/error.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: error_at_line.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/error_at_line.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: error_message_count.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/error_message_count.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: error_one_per_line.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/error_one_per_line.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: error_print_progname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/error_print_progname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: errx.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/errx.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: etext.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/etext.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_aton.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_aton.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_aton_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_aton_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_hostton.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_hostton.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_line.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_line.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_ntoa.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_ntoa.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_ntoa_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_ntoa_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ether_ntohost.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ether_ntohost.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install net-tools: ethers.5 .. 
install -o root -g root -m 644 manual/net-tools/man5/ethers.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: euidaccess.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/euidaccess.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: eventfd2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/eventfd2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: eventfd.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/eventfd.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: eventfd_read.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/eventfd_read.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: eventfd_write.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/eventfd_write.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exec.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exec.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: execl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/execl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: execle.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/execle.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: execlp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/execlp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: execv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/execv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: execve.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/execve.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: execveat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/execveat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: execvp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/execvp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: execvpe.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/execvpe.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/exit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: exit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exit_group.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/exit_group.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: exp10.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp10.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exp10f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp10f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exp10l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp10l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exp2.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp2.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exp2f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp2f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exp2l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp2l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: exp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/exp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: expand.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/expand.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install expect: expect.1 .. 
install -o root -g root -m 644 manual/expect/man1/expect.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: expf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/expf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: expiry.1 .. 
install -o root -g root -m 644 manual/shadow/man1/expiry.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: expl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/expl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: explicit_bzero.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/explicit_bzero.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: expm1.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/expm1.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: expm1f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/expm1f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: expm1l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/expm1l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install nfs-utils: exportfs.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/exportfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: exports.5 .. 
install -o root -g root -m 644 manual/nfs-utils/man5/exports.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_coreutils: expr.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/expr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: fabs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fabs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fabsf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fabsf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fabsl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fabsl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: faccessat2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/faccessat2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: faccessat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/faccessat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: factor.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/factor.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: factor.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/factor.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: fadvise64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fadvise64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fadvise64_64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fadvise64_64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: faillog.5 .. 
install -o root -g root -m 644 manual/shadow/man5/faillog.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install shadow: faillog.8 .. 
install -o root -g root -m 644 manual/shadow/man8/faillog.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: fallocate.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fallocate.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: false.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/false.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: fanotify.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/fanotify.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: fanotify_init.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fanotify_init.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fanotify_mark.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fanotify_mark.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fattach.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fattach.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fchdir.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fchdir.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fchmod.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fchmod.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fchmodat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fchmodat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fchown32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fchown32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fchown.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fchown.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fchownat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fchownat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fclose.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fclose.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fcloseall.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fcloseall.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fcntl64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fcntl64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fcntl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fcntl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fcvt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fcvt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fcvt_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fcvt_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fd.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/fd.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: fdatasync.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fdatasync.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fdetach.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fdetach.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: fdformat.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/fdformat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: fdim.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fdim.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fdimf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fdimf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fdiml.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fdiml.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: fdisk.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/fdisk.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: fdopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fdopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fdopendir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fdopendir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feature_test_macros.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/feature_test_macros.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: feclearexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feclearexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fedisableexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fedisableexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feenableexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feenableexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fegetenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fegetenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fegetexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fegetexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fegetexceptflag.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fegetexceptflag.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fegetround.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fegetround.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feholdexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feholdexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feof_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feof_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feraiseexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feraiseexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ferror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ferror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ferror_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ferror_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fesetenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fesetenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fesetexceptflag.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fesetexceptflag.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fesetround.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fesetround.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install fetchmail: fetchmail.1 .. 
install -o root -g root -m 644 manual/fetchmail/man1/fetchmail.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install fetchmail: fetchmailconf.8 .. 
install -o root -g root -m 644 manual/fetchmail/man8/fetchmailconf.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: fetestexcept.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fetestexcept.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: feupdateenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/feupdateenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fexecve.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fexecve.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fflush.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fflush.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fflush_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fflush_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ffs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ffs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ffsl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ffsl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ffsll.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ffsll.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetgrent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetgrent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetpos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetpos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetpwent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetpwent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetpwent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetpwent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgets.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgets.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgets_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgets_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetspent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetspent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetspent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetspent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetwc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetwc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetwc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetwc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetws.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetws.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetws_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fgetws_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fgetxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fgetxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_grep: fgrep.1 .. 
install -o root -g root -m 644 manual/GNU_grep/man1/fgrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: fifo.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/fifo.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install file: file.1 .. 
install -o root -g root -m 644 manual/file/man1/file.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: filefrag.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/filefrag.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: fileno.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fileno.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fileno_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fileno_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: filesystems.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/filesystems.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_findutils: find.1 .. 
install -o root -g root -m 644 manual/GNU_findutils/man1/find.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: findfs.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/findfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: finger.1 .. 
install -o root -g root -m 644 manual/netkit/man1/finger.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: fingerd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/fingerd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: finit_module.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/finit_module.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: finite.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/finite.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: finitef.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/finitef.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: finitel.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/finitel.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: fish.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/fish.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install flex: flex.1 .. 
install -o root -g root -m 644 manual/flex/man1/flex.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: flistxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/flistxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: flock.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/flock.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: flock.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/flock.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: flockfile.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/flockfile.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: floor.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/floor.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: floorf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/floorf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: floorl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/floorl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fma.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fma.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmaf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmaf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmax.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmax.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmaxf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmaxf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmaxl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmaxl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmemopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmemopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fminf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fminf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fminl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fminl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmod.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmod.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmodf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmodf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fmodl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmodl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: fmt.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/fmt.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: fmtmsg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fmtmsg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fnmatch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fnmatch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: fold.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/fold.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: fopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fopencookie.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fopencookie.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fork.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fork.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: forkpty.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/forkpty.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install fort77: fort77.1 .. 
install -o root -g root -m 644 manual/fort77/man1/fort77.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: fortune.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/fortune.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install mirrordir: forward.1 .. 
install -o root -g root -m 644 manual/mirrordir/man1/forward.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: fpathconf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fpathconf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fpclassify.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fpclassify.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fpurge.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fpurge.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputs_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputs_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputwc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputwc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputwc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputwc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputws.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputws.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fputws_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fputws_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fread.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fread.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fread_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fread_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install procps: free.1 .. 
install -o root -g root -m 644 manual/procps/man1/free.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: free.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/free.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: free_hugepages.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/free_hugepages.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: freeaddrinfo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/freeaddrinfo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: freehostent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/freehostent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: freeifaddrs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/freeifaddrs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fremovexattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fremovexattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: freopen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/freopen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: frexp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/frexp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: frexpf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/frexpf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: frexpl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/frexpl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fs.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/fs.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: fscanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fscanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: fsck.minix.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/fsck.minix.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: fsck.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/fsck.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: fseek.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fseek.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fseeko.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fseeko.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fsetpos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fsetpos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fsetxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fsetxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: fstab.5 .. 
install -o root -g root -m 644 manual/util-linux/man5/fstab.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: fstat64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fstat64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fstat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fstat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fstatat64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fstatat64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fstatat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fstatat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fstatfs64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fstatfs64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fstatfs.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fstatfs.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fstatvfs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fstatvfs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fsync.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/fsync.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ftell.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ftell.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ftello.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ftello.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ftime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ftime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install pcmcia-cs: ftl_check.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/ftl_check.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install pcmcia-cs: ftl_format.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/ftl_format.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ftok.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ftok.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: ftp.1 .. 
install -o root -g root -m 644 manual/netkit/man1/ftp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install wu-ftpd: ftpconversions.5 .. 
install -o root -g root -m 644 manual/wu-ftpd/man5/ftpconversions.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install wu-ftpd: ftpcount.1 .. 
install -o root -g root -m 644 manual/wu-ftpd/man1/ftpcount.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: ftpd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/ftpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install wu-ftpd: ftphosts.5 .. 
install -o root -g root -m 644 manual/wu-ftpd/man5/ftphosts.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install wu-ftpd: ftprestart.8 .. 
install -o root -g root -m 644 manual/wu-ftpd/man8/ftprestart.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install wu-ftpd: ftpservers.5 .. 
install -o root -g root -m 644 manual/wu-ftpd/man5/ftpservers.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install wu-ftpd: ftpshut.8 .. 
install -o root -g root -m 644 manual/wu-ftpd/man8/ftpshut.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ftpusers.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/ftpusers.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install wu-ftpd: ftpwho.1 .. 
install -o root -g root -m 644 manual/wu-ftpd/man1/ftpwho.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ftruncate64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ftruncate64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ftruncate.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ftruncate.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ftrylockfile.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ftrylockfile.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fts.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fts.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fts_children.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fts_children.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fts_close.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fts_close.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fts_open.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fts_open.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fts_read.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fts_read.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fts_set.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fts_set.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ftw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ftw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: full.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/full.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: funlockfile.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/funlockfile.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install psmisc: fuser.1 .. 
install -o root -g root -m 644 manual/psmisc/man1/fuser.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: futex.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/futex.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: futex.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/futex.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: futimens.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/futimens.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: futimes.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/futimes.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: futimesat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/futimesat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: fwide.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fwide.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fwprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fwprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fwrite.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fwrite.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: fwrite_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/fwrite_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_gcc: g++.1 .. 
install -o root -g root -m 644 manual/GNU_gcc/man1/g++.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gcc: g77.1 .. 
install -o root -g root -m 644 manual/GNU_gcc/man1/g77.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: gai.conf.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/gai.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: gai_cancel.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gai_cancel.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gai_error.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gai_error.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gai_strerror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gai_strerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gai_suspend.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gai_suspend.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gamma.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gamma.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gammaf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gammaf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gammal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gammal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install gnumaniak: gasp.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/gasp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gawk: gawk.1 .. 
install -o root -g root -m 644 manual/GNU_gawk/man1/gawk.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gcc: gcc.1 .. 
install -o root -g root -m 644 manual/GNU_gcc/man1/gcc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: gcvt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gcvt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_gdb: gdb.1 .. 
install -o root -g root -m 644 manual/GNU_gdb/man1/gdb.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gdbm: gdbm.3 .. 
install -o root -g root -m 644 manual/GNU_gdbm/man3/gdbm.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_gdb: gdbserver.1 .. 
install -o root -g root -m 644 manual/GNU_gdb/man1/gdbserver.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: get_current_dir_name.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/get_current_dir_name.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: get_kernel_syms.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/get_kernel_syms.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: get_mempolicy.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/get_mempolicy.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: get_myaddress.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/get_myaddress.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: get_nprocs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/get_nprocs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: get_nprocs_conf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/get_nprocs_conf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: get_thread_area.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/get_thread_area.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getaddrinfo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getaddrinfo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getaddrinfo_a.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getaddrinfo_a.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getaliasbyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getaliasbyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getaliasbyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getaliasbyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getaliasent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getaliasent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getaliasent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getaliasent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getauxval.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getauxval.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getchar.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getchar.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getchar_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getchar_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getcontext.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getcontext.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getcpu.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getcpu.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getcwd.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getcwd.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getcwd.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getcwd.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getdate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getdate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getdate_err.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getdate_err.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getdate_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getdate_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getdelim.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getdelim.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getdents64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getdents64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getdents.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getdents.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getdirentries.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getdirentries.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getdomainname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getdomainname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getdtablesize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getdtablesize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getegid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getegid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getegid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getegid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getent.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/getent.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: getenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: geteuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/geteuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: geteuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/geteuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install acl: getfacl.1 .. 
install -o root -g root -m 644 manual/acl/man1/getfacl.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: getfsent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getfsent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getfsfile.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getfsfile.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getfsspec.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getfsspec.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getgid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgrent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgrgid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrgid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgrgid_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrgid_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgrnam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrnam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgrnam_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrnam_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgrouplist.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getgrouplist.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getgroups32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getgroups32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getgroups.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getgroups.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: gethostbyaddr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostbyaddr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostbyaddr_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostbyaddr_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostbyname2.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostbyname2.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostbyname2_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostbyname2_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostbyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostbyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostbyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostbyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gethostid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gethostname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/gethostname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getifaddrs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getifaddrs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getipnodebyaddr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getipnodebyaddr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getipnodebyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getipnodebyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getitimer.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getitimer.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getline.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getline.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getloadavg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getloadavg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getlogin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getlogin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getlogin_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getlogin_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getmntent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getmntent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getmntent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getmntent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getnameinfo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnameinfo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetbyaddr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetbyaddr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetbyaddr_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetbyaddr_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetbyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetbyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetbyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetbyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getnetgrent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getnetgrent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: getopt.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/getopt.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: getopt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getopt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getopt_long.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getopt_long.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getopt_long_only.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getopt_long_only.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpagesize.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpagesize.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getpass.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpass.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpeername.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpeername.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getpgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getpgrp.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpgrp.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getpid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getpmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getppid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getppid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getpriority.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getpriority.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getprotobyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getprotobyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getprotobyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getprotobyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getprotobynumber.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getprotobynumber.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getprotobynumber_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getprotobynumber_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getprotoent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getprotoent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getprotoent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getprotoent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpwent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpwent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpwent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpwent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpwnam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpwnam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpwnam_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpwnam_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpwuid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpwuid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getpwuid_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getpwuid_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getresgid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getresgid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getresgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getresgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getresuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getresuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getresuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getresuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getrlimit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getrlimit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getrpcbyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcbyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrpcbyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcbyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrpcbynumber.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcbynumber.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrpcbynumber_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcbynumber_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrpcent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrpcent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrpcport.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getrpcport.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getrusage.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getrusage.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: gets.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gets.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getservbyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getservbyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getservbyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getservbyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getservbyport.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getservbyport.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getservbyport_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getservbyport_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getservent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getservent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getservent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getservent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getsid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getsid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getsockname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getsockname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getsockopt.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getsockopt.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getspent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getspent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getspent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getspent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getspnam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getspnam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getspnam_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getspnam_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getsubopt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getsubopt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gettid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/gettid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: gettimeofday.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/gettimeofday.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getttyent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getttyent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getttynam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getttynam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: getumask.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getumask.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getusershell.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getusershell.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutid_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutid_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutline.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutline.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutline_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutline_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutmpx.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutmpx.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutxent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutxent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutxid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutxid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getutxline.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getutxline.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getwc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getwc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getwc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getwc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getwchar.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getwchar.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getwchar_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getwchar_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getwd.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/getwd.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: getxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/getxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netatalk: getzones.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/getzones.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: glibc.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/glibc.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: glob.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/glob.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: glob.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/glob.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: globfree.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/globfree.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gmtime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gmtime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gmtime_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gmtime_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gnu_dev_major.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gnu_dev_major.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gnu_dev_makedev.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gnu_dev_makedev.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gnu_dev_minor.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gnu_dev_minor.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gnu_get_libc_release.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gnu_get_libc_release.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gnu_get_libc_version.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gnu_get_libc_version.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: gpasswd.1 .. 
install -o root -g root -m 644 manual/shadow/man1/gpasswd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_binutils: gprof.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/gprof.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: grantpt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/grantpt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_grep: grep.1 .. 
install -o root -g root -m 644 manual/GNU_grep/man1/grep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grn.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grn.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grodvi.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grodvi.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: groff.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/groff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: groff.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_char.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_char.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_font.5 .. 
install -o root -g root -m 644 manual/GNU_groff/man5/groff_font.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_groff: groff_man.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_man.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_mdoc.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_mdoc.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_me.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_me.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_mm.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_mm.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_mmse.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_mmse.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_ms.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_ms.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_mwww.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/groff_mwww.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_groff: groff_out.5 .. 
install -o root -g root -m 644 manual/GNU_groff/man5/groff_out.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_groff: groff_tmac.5 .. 
install -o root -g root -m 644 manual/GNU_groff/man5/groff_tmac.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_groff: grog.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grog.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grohtml.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grohtml.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grolbp.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grolbp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grolj4.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grolj4.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grops.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grops.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: grotty.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/grotty.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: group.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/group.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: group_member.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/group_member.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: groupadd.8 .. 
install -o root -g root -m 644 manual/shadow/man8/groupadd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: groupdel.8 .. 
install -o root -g root -m 644 manual/shadow/man8/groupdel.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: groupmod.8 .. 
install -o root -g root -m 644 manual/shadow/man8/groupmod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: groups.1 .. 
install -o root -g root -m 644 manual/shadow/man1/groups.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: grpck.8 .. 
install -o root -g root -m 644 manual/shadow/man8/grpck.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: grpconv.8 .. 
install -o root -g root -m 644 manual/shadow/man8/grpconv.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: grpunconv.8 .. 
install -o root -g root -m 644 manual/shadow/man8/grpunconv.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: gsignal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/gsignal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: gtty.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/gtty.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_gzip: gunzip.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/gunzip.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: gzexe.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/gzexe.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: gzip.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/gzip.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: h_errno.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/h_errno.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games-non-free: hack.6 .. 
install -o root -g root -m 644 manual/bsd-games-non-free/man6/hack.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install SysVinit: halt.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/halt.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: hangman.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/hangman.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: hash.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hash.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hasmntopt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hasmntopt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hcreate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hcreate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hcreate_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hcreate_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hd.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/hd.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: hdestroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hdestroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hdestroy_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hdestroy_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install hdparm: hdparm.8 .. 
install -o root -g root -m 644 manual/hdparm/man8/hdparm.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: head.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/head.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: herror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/herror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: hexdump.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/hexdump.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: hier.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/hier.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install man: hman.1 .. 
install -o root -g root -m 644 manual/man/man1/hman.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: host.conf.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/host.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install bind: host.1 .. 
install -o root -g root -m 644 manual/bind/man1/host.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: hostid.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/hostid.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: hostname.1 .. 
install -o root -g root -m 644 manual/net-tools/man1/hostname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: hostname.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/hostname.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: hosts.equiv.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/hosts.equiv.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: hosts.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/hosts.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install tcp_wrappers: hosts_access.3 .. 
install -o root -g root -m 644 manual/tcp_wrappers/man3/hosts_access.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install tcp_wrappers: hosts_access.5 .. 
install -o root -g root -m 644 manual/tcp_wrappers/man5/hosts_access.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install tcp_wrappers: hosts_options.5 .. 
install -o root -g root -m 644 manual/tcp_wrappers/man5/hosts_options.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_groff: hpftodit.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/hpftodit.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: hqx2bin.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/hqx2bin.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: hsearch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hsearch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hsearch_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hsearch_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hstrerror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hstrerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htobe16.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htobe16.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htobe32.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htobe32.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htobe64.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htobe64.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htole16.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htole16.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htole32.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htole32.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htole64.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htole64.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htonl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htonl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: htons.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/htons.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: hwclock.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/hwclock.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: hypot.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hypot.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hypotf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hypotf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: hypotl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/hypotl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install pcmcia-cs: i82365.4 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man4/i82365.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: icmp.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/icmp.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iconv.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/iconv.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: iconv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iconv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iconv_close.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iconv_close.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iconv_open.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iconv_open.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iconvconfig.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/iconvconfig.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: id.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/id.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install pcmcia-cs: ide_info.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/ide_info.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_rcs: ident.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/ident.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: idle.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/idle.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: if_freenameindex.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/if_freenameindex.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: if_indextoname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/if_indextoname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: if_nameindex.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/if_nameindex.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: if_nametoindex.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/if_nametoindex.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install net-tools: ifconfig.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/ifconfig.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install pcmcia-cs: ifport.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/ifport.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install pcmcia-cs: ifuser.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/ifuser.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_gawk: igawk.1 .. 
install -o root -g root -m 644 manual/GNU_gawk/man1/igawk.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ilogb.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ilogb.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ilogbf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ilogbf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ilogbl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ilogbl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: imaxabs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/imaxabs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: imaxdiv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/imaxdiv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: in.comsat.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.comsat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.fingerd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.fingerd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.ftpd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.ftpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.ntalkd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.ntalkd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.rexecd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.rexecd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.rlogin.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.rlogin.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.rshd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.rshd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.talkd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.talkd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.telned.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.telned.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.tftpd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.tftpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: in.writed.8 .. 
install -o root -g root -m 644 manual/netkit/man8/in.writed.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: inb.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inb.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: inb_p.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inb_p.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_indent: indent.1 .. 
install -o root -g root -m 644 manual/GNU_indent/man1/indent.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: index.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/index.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_groff: indxbib.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/indxbib.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: inet.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_addr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_addr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_aton.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_aton.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_lnaof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_lnaof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_makeaddr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_makeaddr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_net_ntop.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_net_ntop.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_net_pton.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_net_pton.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_netof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_netof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_network.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_network.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_ntoa.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_ntoa.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_ntop.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_ntop.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inet_pton.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/inet_pton.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: inetd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/inetd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_texinfo: info.1 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man1/info.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_texinfo: info.5 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man5/info.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install SysVinit: init.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/init.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: init_module.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/init_module.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: initgroups.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/initgroups.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: initrd.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/initrd.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install SysVinit: initscript.5 .. 
install -o root -g root -m 644 manual/SysVinit/man5/initscript.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: initstate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/initstate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: initstate_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/initstate_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install SysVinit: inittab.5 .. 
install -o root -g root -m 644 manual/SysVinit/man5/inittab.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: inl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: inl_p.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inl_p.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: innetgr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/innetgr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: inotify.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/inotify.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: inotify_add_watch.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inotify_add_watch.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: inotify_init1.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inotify_init1.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: inotify_init.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inotify_init.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: inotify_rm_watch.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inotify_rm_watch.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: insb.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/insb.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: insl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/insl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install module-init-tools: insmod.8 .. 
install -o root -g root -m 644 manual/module-init-tools/man8/insmod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: insque.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/insque.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_texinfo: install-info.1 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man1/install-info.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: install.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/install.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: insw.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/insw.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: intro.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/intro.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: intro.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/intro.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: intro.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/intro.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: intro.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/intro.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: intro.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/intro.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: intro.6 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man6/intro.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: intro.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/intro.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: intro.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/intro.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: inw.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inw.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: inw_p.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/inw_p.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: io_cancel.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/io_cancel.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: io_destroy.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/io_destroy.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: io_getevents.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/io_getevents.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: io_setup.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/io_setup.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: io_submit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/io_submit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ioctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ioctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ioperm.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ioperm.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: iopl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/iopl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ioprio_get.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ioprio_get.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ioprio_set.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ioprio_set.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install iptables: ip6tables-restore.8 .. 
install -o root -g root -m 644 manual/iptables/man8/ip6tables-restore.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: ip6tables-save.8 .. 
install -o root -g root -m 644 manual/iptables/man8/ip6tables-save.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: ip6tables.8 .. 
install -o root -g root -m 644 manual/iptables/man8/ip6tables.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ip.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/ip.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: ipc.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ipc.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install ipchains: ipchains.8 .. 
install -o root -g root -m 644 manual/ipchains/man8/ipchains.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ipfwadm: ipfwadm.8 .. 
install -o root -g root -m 644 manual/ipfwadm/man8/ipfwadm.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: iptables-apply.8 .. 
install -o root -g root -m 644 manual/iptables/man8/iptables-apply.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: iptables-extensions.8 .. 
install -o root -g root -m 644 manual/iptables/man8/iptables-extensions.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: iptables-restore.8 .. 
install -o root -g root -m 644 manual/iptables/man8/iptables-restore.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: iptables-save.8 .. 
install -o root -g root -m 644 manual/iptables/man8/iptables-save.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install iptables: iptables-xml.1 .. 
install -o root -g root -m 644 manual/iptables/man1/iptables-xml.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install iptables: iptables.8 .. 
install -o root -g root -m 644 manual/iptables/man8/iptables.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ipv6.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/ipv6.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iruserok.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iruserok.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iruserok_af.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iruserok_af.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isalnum.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isalnum.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isalnum_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isalnum_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isalpha.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isalpha.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isalpha_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isalpha_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isascii.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isascii.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isascii_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isascii_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isastream.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/isastream.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: isatty.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isatty.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isblank.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isblank.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isblank_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isblank_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iscntrl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iscntrl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iscntrl_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iscntrl_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isdigit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isdigit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isdigit_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isdigit_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isfdtype.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isfdtype.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isfinite.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isfinite.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isgraph.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isgraph.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isgraph_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isgraph_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isgreater.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isgreater.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isgreaterequal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isgreaterequal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isinf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isinf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isinff.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isinff.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isinfl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isinfl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isless.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isless.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: islessequal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/islessequal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: islessgreater.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/islessgreater.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: islower.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/islower.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: islower_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/islower_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isnan.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isnan.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isnanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isnanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isnanl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isnanl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isnormal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isnormal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iso-8859-10.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-10.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-11.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-11.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-13.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-13.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-14.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-14.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-15.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-15.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-16.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-16.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-1.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-1.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-2.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-2.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-3.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-3.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-4.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-4.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-5.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-5.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-6.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-6.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-7.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-7.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso-8859-9.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso-8859-9.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-10.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-10.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-11.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-11.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-13.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-13.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-14.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-14.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-15.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-15.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-16.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-16.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-1.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-1.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-2.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-2.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-3.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-3.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-4.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-4.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-5.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-5.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-6.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-6.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-7.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-7.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859-9.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859-9.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_10.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_10.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_11.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_11.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_13.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_13.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_14.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_14.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_15.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_15.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_16.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_16.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_1.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_1.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_2.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_2.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_3.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_3.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_4.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_4.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_5.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_5.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_6.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_6.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_7.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_7.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: iso_8859_9.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/iso_8859_9.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install cdrecord: isoinfo.8 .. 
install -o root -g root -m 644 manual/cdrecord/man8/isoinfo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: isosize.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/isosize.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: isprint.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isprint.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isprint_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isprint_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ispunct.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ispunct.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ispunct_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ispunct_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isspace.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isspace.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isspace_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isspace_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: issue.net.5 .. 
install -o root -g root -m 644 manual/netkit/man5/issue.net.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: issue.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/issue.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: isunordered.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isunordered.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isupper.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isupper.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isupper_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isupper_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswalnum.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswalnum.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswalpha.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswalpha.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswblank.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswblank.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswcntrl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswcntrl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswctype.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswctype.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswdigit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswdigit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswgraph.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswgraph.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswlower.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswlower.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswprint.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswprint.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswpunct.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswpunct.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswspace.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswspace.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswupper.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswupper.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: iswxdigit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/iswxdigit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isxdigit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isxdigit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: isxdigit_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/isxdigit_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: j0.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/j0.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: j0f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/j0f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: j0l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/j0l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: j1.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/j1.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: j1f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/j1f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: j1l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/j1l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: jn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/jn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: jnf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/jnf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: jnl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/jnl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: join.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/join.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: jrand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/jrand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: jrand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/jrand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: kcmp.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/kcmp.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: kexec_file_load.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/kexec_file_load.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: kexec_load.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/kexec_load.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: key_decryptsession.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/key_decryptsession.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: key_encryptsession.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/key_encryptsession.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: key_gendes.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/key_gendes.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: key_secretkey_is_set.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/key_secretkey_is_set.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: key_setsecret.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/key_setsecret.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: kill.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/kill.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: kill.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/kill.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install SysVinit: killall5.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/killall5.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install psmisc: killall.1 .. 
install -o root -g root -m 644 manual/psmisc/man1/killall.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: klogctl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/klogctl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install sysklogd: klogd.8 .. 
install -o root -g root -m 644 manual/sysklogd/man8/klogd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: kmem.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/kmem.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: koi8-r.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/koi8-r.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: koi8-u.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/koi8-u.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: l64a.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/l64a.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: labs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/labs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install SysVinit: last.1 .. 
install -o root -g root -m 644 manual/SysVinit/man1/last.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install SysVinit: lastb.1 .. 
install -o root -g root -m 644 manual/SysVinit/man1/lastb.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: lastlog.8 .. 
install -o root -g root -m 644 manual/shadow/man8/lastlog.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: latin10.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin10.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin1.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin1.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin2.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin2.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin3.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin3.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin4.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin4.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin5.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin5.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin6.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin6.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin7.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin7.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: latin9.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/latin9.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: lchown32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lchown32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lchown.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lchown.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lckpwdf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lckpwdf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lcong48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lcong48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lcong48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lcong48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ld-linux.so.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/ld-linux.so.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ld-linux.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/ld-linux.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ld.so.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/ld.so.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_binutils: ld.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/ld.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ldconfig.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/ldconfig.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ldd.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/ldd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ldexp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ldexp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ldexpf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ldexpf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ldexpl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ldexpl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ldiv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ldiv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: le16toh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/le16toh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: le32toh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/le32toh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: le64toh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/le64toh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_less: less.1 .. 
install -o root -g root -m 644 manual/GNU_less/man1/less.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_less: lesskey.1 .. 
install -o root -g root -m 644 manual/GNU_less/man1/lesskey.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: lfind.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lfind.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgamma.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lgamma.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgamma_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lgamma_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgammaf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lgammaf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgammaf_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lgammaf_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgammal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lgammal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgammal_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lgammal_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lgetxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lgetxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install e2fsprogs: libblkid.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/libblkid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: libc.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/libc.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install file: libmagic.3 .. 
install -o root -g root -m 644 manual/file/man3/libmagic.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install gnumaniak: libtool.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/libtool.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install gnumaniak: libtoolize.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/libtoolize.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install lids: lidsadm.8 .. 
install -o root -g root -m 644 manual/lids/man8/lidsadm.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install lids: lidsconf.8 .. 
install -o root -g root -m 644 manual/lids/man8/lidsconf.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install lilo: lilo.conf.5 .. 
install -o root -g root -m 644 manual/lilo/man5/lilo.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install lilo: lilo.8 .. 
install -o root -g root -m 644 manual/lilo/man8/lilo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: limits.5 .. 
install -o root -g root -m 644 manual/shadow/man5/limits.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install util-linux: line.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/line.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: link.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/link.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: link.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/link.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: linkat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/linkat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lio_listio.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lio_listio.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: listen.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/listen.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: listxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/listxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_groff: lkbib.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/lkbib.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: llabs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llabs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lldiv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lldiv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llistxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/llistxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: llrint.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llrint.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llrintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llrintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llrintl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llrintl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llround.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llround.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llroundf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llroundf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llroundl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/llroundl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: llseek.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/llseek.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: ln.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/ln.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: locale.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/locale.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: locale.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/locale.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: locale.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/locale.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: localeconv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/localeconv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: localtime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/localtime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: localtime_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/localtime_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_findutils: locate.1 .. 
install -o root -g root -m 644 manual/GNU_findutils/man1/locate.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_findutils: locatedb.5 .. 
install -o root -g root -m 644 manual/GNU_findutils/man5/locatedb.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: lock.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lock.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install nfs-utils: lockd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/lockd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: lockf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lockf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log10.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log10.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log10f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log10f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log10l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log10l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log1p.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log1p.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log1pf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log1pf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log1pl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log1pl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log2.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log2.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log2f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log2f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log2l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log2l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: log.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/log.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: logb.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logb.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: logbf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logbf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: logbl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logbl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: logf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: logger.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/logger.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: login.access.5 .. 
install -o root -g root -m 644 manual/shadow/man5/login.access.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install shadow: login.defs.5 .. 
install -o root -g root -m 644 manual/shadow/man5/login.defs.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install shadow: login.1 .. 
install -o root -g root -m 644 manual/shadow/man1/login.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: login.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/login.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: login_tty.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/login_tty.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: logl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: logname.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/logname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: logout.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logout.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: logoutd.8 .. 
install -o root -g root -m 644 manual/shadow/man8/logoutd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: logsave.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/logsave.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: logwtmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/logwtmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: longjmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/longjmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: look.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/look.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: lookbib.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/lookbib.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: lookup_dcookie.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lookup_dcookie.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: losetup.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/losetup.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install cups: lp.1 .. 
install -o root -g root -m 644 manual/cups/man1/lp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: lp.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/lp.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install cups: lpadmin.8 .. 
install -o root -g root -m 644 manual/cups/man8/lpadmin.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install cups: lpc.8 .. 
install -o root -g root -m 644 manual/cups/man8/lpc.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install lpr-linux: lpd.8 .. 
install -o root -g root -m 644 manual/lpr-linux/man8/lpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install cups: lpoptions.1 .. 
install -o root -g root -m 644 manual/cups/man1/lpoptions.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cups: lpq.1 .. 
install -o root -g root -m 644 manual/cups/man1/lpq.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cups: lpr.1 .. 
install -o root -g root -m 644 manual/cups/man1/lpr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cups: lprm.1 .. 
install -o root -g root -m 644 manual/cups/man1/lprm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install cups: lpstat.1 .. 
install -o root -g root -m 644 manual/cups/man1/lpstat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install lpr-linux: lptest.1 .. 
install -o root -g root -m 644 manual/lpr-linux/man1/lptest.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: lrand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lrand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lrand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lrand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lremovexattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lremovexattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lrint.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lrint.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lrintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lrintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lrintl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lrintl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lround.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lround.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lroundf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lroundf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lroundl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lroundl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: ls.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/ls.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: lsattr.1 .. 
install -o root -g root -m 644 manual/e2fsprogs/man1/lsattr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: lsblk.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/lsblk.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install procinfo: lsdev.8 .. 
install -o root -g root -m 644 manual/procinfo/man8/lsdev.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: lsearch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lsearch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lseek64.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lseek64.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: lseek.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lseek.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lsetxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lsetxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install module-init-tools: lsmod.8 .. 
install -o root -g root -m 644 manual/module-init-tools/man8/lsmod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install pciutils: lspci.8 .. 
install -o root -g root -m 644 manual/pciutils/man8/lspci.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install pcmcia-cs: lspnp.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/lspnp.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: lstat64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lstat64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lstat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/lstat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: lutimes.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/lutimes.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netatalk: macbinary.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/macbinary.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: madvise1.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/madvise1.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: madvise.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/madvise.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install file: magic.4 .. 
install -o root -g root -m 644 manual/file/man4/magic.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install sendmail: mail.local.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/mail.local.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: mailaddr.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/mailaddr.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install sendmail: mailq.1 .. 
install -o root -g root -m 644 manual/sendmail/man1/mailq.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install sendmail: mailstats.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/mailstats.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: major.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/major.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_make: make.1 .. 
install -o root -g root -m 644 manual/GNU_make/man1/make.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: makecontext.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/makecontext.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install ypserv: makedbm.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/makedbm.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: makedev.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/makedev.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_texinfo: makeinfo.1 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man1/makeinfo.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install sendmail: makemap.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/makemap.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install man: makewhatis.8 .. 
install -o root -g root -m 644 manual/man/man8/makewhatis.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: mallinfo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mallinfo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_get_state.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_get_state.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_hook.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_hook.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_info.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_info.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_set_state.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_set_state.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_stats.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_stats.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_trim.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_trim.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: malloc_usable_size.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/malloc_usable_size.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: man-pages.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/man-pages.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install man: man.conf.5 .. 
install -o root -g root -m 644 manual/man/man5/man.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install man: man2html.1 .. 
install -o root -g root -m 644 manual/man/man1/man2html.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install man: man.1 .. 
install -o root -g root -m 644 manual/man/man1/man.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: man.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/man.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install man: manlint.1 .. 
install -o root -g root -m 644 manual/man/man1/manlint.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: math_error.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/math_error.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: matherr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/matherr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbind.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mbind.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mblen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mblen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbrlen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbrlen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbrtowc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbrtowc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbsinit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbsinit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbsnrtowcs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbsnrtowcs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbsrtowcs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbsrtowcs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbstowcs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbstowcs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mbtowc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mbtowc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: mcookie.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/mcookie.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: md5sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/md5sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: megatron.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/megatron.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mem.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/mem.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: memalign.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memalign.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memccpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memccpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memcmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memcmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memfd_create.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/memfd_create.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: memfrob.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memfrob.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memmem.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memmem.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memmove.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memmove.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mempcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mempcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memrchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memrchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/memset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: memusage.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/memusage.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: memusagestat.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/memusagestat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: merge.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/merge.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install SysVinit: mesg.1 .. 
install -o root -g root -m 644 manual/SysVinit/man1/mesg.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install microcode_ctl: microcode_ctl.8 .. 
install -o root -g root -m 644 manual/microcode_ctl/man8/microcode_ctl.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: migrate_pages.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/migrate_pages.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install net-tools: mii-tool.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/mii-tool.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: mille.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/mille.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: mincore.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mincore.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: minor.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/minor.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install mirrordir: mirrordir.1 .. 
install -o root -g root -m 644 manual/mirrordir/man1/mirrordir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: mk_cmds.1 .. 
install -o root -g root -m 644 manual/e2fsprogs/man1/mk_cmds.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: mkdir.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/mkdir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mkdir.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mkdir.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mkdirat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mkdirat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mkdtemp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkdtemp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: mke2fs.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/mke2fs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: mkfifo.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/mkfifo.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mkfifo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkfifo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mkfifoat.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkfifoat.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: mkfs.bfs.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/mkfs.bfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: mkfs.minix.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/mkfs.minix.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: mkfs.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/mkfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install cdrecord: mkhybrid.8 .. 
install -o root -g root -m 644 manual/cdrecord/man8/mkhybrid.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install cdrecord: mkisofs.8 .. 
install -o root -g root -m 644 manual/cdrecord/man8/mkisofs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install e2fsprogs: mklost+found.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/mklost+found.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: mknetid.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/mknetid.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: mknod.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/mknod.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mknod.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mknod.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mknodat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mknodat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mkostemp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkostemp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mkostemps.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkostemps.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: mkpasswd.8 .. 
install -o root -g root -m 644 manual/shadow/man8/mkpasswd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install reiserfsprogs: mkreiserfs.8 .. 
install -o root -g root -m 644 manual/reiserfsprogs/man8/mkreiserfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install lilo: mkrescue.8 .. 
install -o root -g root -m 644 manual/lilo/man8/mkrescue.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: mkstemp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkstemp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mkstemps.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mkstemps.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: mkswap.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/mkswap.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: mktemp.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/mktemp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mktemp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mktemp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mktime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mktime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mlock2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mlock2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mlock.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mlock.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mlockall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mlockall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mmap2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mmap2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mmap64.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mmap64.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mmap.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mmap.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_groff: mmroff.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/mmroff.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: modf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/modf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: modff.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/modff.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: modfl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/modfl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: modify_ldt.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/modify_ldt.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install module-init-tools: modinfo.8 .. 
install -o root -g root -m 644 manual/module-init-tools/man8/modinfo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install module-init-tools: modprobe.conf.5 .. 
install -o root -g root -m 644 manual/module-init-tools/man5/modprobe.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install module-init-tools: modprobe.8 .. 
install -o root -g root -m 644 manual/module-init-tools/man8/modprobe.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install module-init-tools: modules.dep.5 .. 
install -o root -g root -m 644 manual/module-init-tools/man5/modules.dep.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install util-linux: more.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/more.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: morse.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/morse.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: motd.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/motd.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: mount.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mount.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: mount.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/mount.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: mountd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/mountd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: mouse.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/mouse.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: move_pages.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/move_pages.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install mpg123: mpg123.1 .. 
install -o root -g root -m 644 manual/mpg123/man1/mpg123.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mpool.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mpool.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mprotect.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mprotect.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mpx.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mpx.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_close.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_close.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_getattr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_getattr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_getsetattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mq_getsetattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_notify.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mq_notify.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_notify.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_notify.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_open.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mq_open.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_open.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_open.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_overview.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/mq_overview.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: mq_receive.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_receive.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_send.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_send.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_setattr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_setattr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_timedreceive.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mq_timedreceive.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_timedreceive.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_timedreceive.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_timedsend.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mq_timedsend.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_timedsend.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_timedsend.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mq_unlink.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mq_unlink.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: mq_unlink.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mq_unlink.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mrand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mrand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mrand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/mrand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: mremap.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/mremap.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: msgctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/msgctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: msgget.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/msgget.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: msgop.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/msgop.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: msgrcv.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/msgrcv.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: msgsnd.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/msgsnd.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: msr.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/msr.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: msync.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/msync.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_cpio: mt.1 .. 
install -o root -g root -m 644 manual/GNU_cpio/man1/mt.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: mtrace.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/mtrace.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: munlock.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/munlock.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: munlockall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/munlockall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: munmap.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/munmap.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: mv.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/mv.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: name_to_handle_at.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/name_to_handle_at.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install bind: named-bootconf.8 .. 
install -o root -g root -m 644 manual/bind/man8/named-bootconf.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bind: named-xfer.8 .. 
install -o root -g root -m 644 manual/bind/man8/named-xfer.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bind: named.conf.5 .. 
install -o root -g root -m 644 manual/bind/man5/named.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install bind: named.8 .. 
install -o root -g root -m 644 manual/bind/man8/named.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: namei.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/namei.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: nameif.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/nameif.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: namespaces.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/namespaces.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: nan.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nan.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nanl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nanl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nanosleep.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/nanosleep.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netatalk: nbp.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/nbp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: nbp_name.3 .. 
install -o root -g root -m 644 manual/netatalk/man3/nbp_name.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netatalk: nbplkup.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/nbplkup.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: nbprgstr.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/nbprgstr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: nbpunrgstr.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/nbpunrgstr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ncftp: ncftp.1 .. 
install -o root -g root -m 644 manual/ncftp/man1/ncftp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bind: ndc.8 .. 
install -o root -g root -m 644 manual/bind/man8/ndc.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: nearbyint.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nearbyint.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nearbyintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nearbyintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nearbyintl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nearbyintl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_groff: neqn.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/neqn.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: netatalk-config.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/netatalk-config.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: netatalk.conf.5 .. 
install -o root -g root -m 644 manual/netatalk/man5/netatalk.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: netdevice.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/netdevice.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install ypserv: netgroup.5 .. 
install -o root -g root -m 644 manual/ypserv/man5/netgroup.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: netlink.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/netlink.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: netlink.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/netlink.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install netkit: netrc.5 .. 
install -o root -g root -m 644 manual/netkit/man5/netrc.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install net-tools: netstat.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/netstat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: networks.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/networks.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install sendmail: newaliases.1 .. 
install -o root -g root -m 644 manual/sendmail/man1/newaliases.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: newfstatat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/newfstatat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: newgrp.1 .. 
install -o root -g root -m 644 manual/shadow/man1/newgrp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: newusers.8 .. 
install -o root -g root -m 644 manual/shadow/man8/newusers.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: nextafter.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nextafter.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nextafterf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nextafterf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nextafterl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nextafterl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nexttoward.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nexttoward.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nexttowardf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nexttowardf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nexttowardl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nexttowardl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install nfs-utils: nfsd.7 .. 
install -o root -g root -m 644 manual/nfs-utils/man7/nfsd.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install nfs-utils: nfsd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/nfsd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: nfsservctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/nfsservctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install nfs-utils: nfsstat.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/nfsstat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: nftw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nftw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install nfs-utils: nhfsgraph.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/nhfsgraph.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: nhfsnums.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/nhfsnums.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: nhfsrun.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/nhfsrun.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: nhfsstone.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/nhfsstone.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: nice.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/nice.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: nice.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/nice.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install yp-tools: nicknames.5 .. 
install -o root -g root -m 644 manual/yp-tools/man5/nicknames.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install net-tools: nisdomainname.1 .. 
install -o root -g root -m 644 manual/net-tools/man1/nisdomainname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install yp-tools: nisdomainname.8 .. 
install -o root -g root -m 644 manual/yp-tools/man8/nisdomainname.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: nl.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/nl.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: nl_langinfo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nl_langinfo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nl_langinfo_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nl_langinfo_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_binutils: nlmconv.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/nlmconv.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_binutils: nm.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/nm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: nohup.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/nohup.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: nologin.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/nologin.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_coreutils: nproc.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/nproc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: nrand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nrand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: nrand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/nrand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_groff: nroff.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/nroff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: nscd.conf.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/nscd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: nscd.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/nscd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bind: nslookup.8 .. 
install -o root -g root -m 644 manual/bind/man8/nslookup.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: nss.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/nss.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: nsswitch.conf.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/nsswitch.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install bind: nsupdate.8 .. 
install -o root -g root -m 644 manual/bind/man8/nsupdate.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: ntalkd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/ntalkd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: ntohl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ntohl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ntohs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ntohs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ntp_adjtime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ntp_adjtime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: null.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/null.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: numa.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/numa.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install bsd-games: number.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/number.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_coreutils: numfmt.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/numfmt.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_binutils: objcopy.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/objcopy.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_binutils: objdump.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/objdump.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: od.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/od.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: offsetof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/offsetof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: oldfstat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/oldfstat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: oldlstat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/oldlstat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: oldolduname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/oldolduname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: oldstat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/oldstat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: olduname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/olduname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: on_exit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/on_exit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: open.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/open.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: open_by_handle_at.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/open_by_handle_at.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: openat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/openat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: opendir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/opendir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: openlog.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/openlog.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: openpty.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/openpty.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: operator.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/operator.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: optarg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/optarg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: opterr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/opterr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: optind.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/optind.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: optopt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/optopt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: outb.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outb.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outb_p.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outb_p.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outl_p.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outl_p.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outsb.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outsb.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outsl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outsl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outsw.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outsw.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outw.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outw.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: outw_p.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/outw_p.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install pcmcia-cs: pack_cis.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/pack_cis.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: packet.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/packet.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install netatalk: pap.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/pap.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: papd.conf.5 .. 
install -o root -g root -m 644 manual/netatalk/man5/papd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install netatalk: papd.8 .. 
install -o root -g root -m 644 manual/netatalk/man8/papd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netatalk: papstatus.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/papstatus.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: papstatus.8 .. 
install -o root -g root -m 644 manual/netatalk/man8/papstatus.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: partx.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/partx.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: passwd2des.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/passwd2des.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: passwd.1 .. 
install -o root -g root -m 644 manual/shadow/man1/passwd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: passwd.5 .. 
install -o root -g root -m 644 manual/shadow/man5/passwd.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_coreutils: paste.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/paste.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_patch: patch.1 .. 
install -o root -g root -m 644 manual/GNU_patch/man1/patch.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: path_resolution.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/path_resolution.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_coreutils: pathchk.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/pathchk.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pathconf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pathconf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pause.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pause.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pciconfig_iobase.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pciconfig_iobase.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pciconfig_read.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pciconfig_read.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pciconfig_write.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pciconfig_write.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install pcmcia-cs: pcinitrd.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/pcinitrd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: pclose.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pclose.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install pcmcia-cs: pcmcia.5 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man5/pcmcia.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install pcmcia-cs: pcmcia_core.4 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man4/pcmcia_core.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: perfmonctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/perfmonctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: perror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/perror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: personality.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/personality.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_groff: pfbtops.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/pfbtops.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: pftp.1 .. 
install -o root -g root -m 644 manual/netkit/man1/pftp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: pg.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/pg.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install procps: pgrep.1 .. 
install -o root -g root -m 644 manual/procps/man1/pgrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: phantasia.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/phantasia.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: phys.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/phys.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_groff: pic.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/pic.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pid_namespaces.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/pid_namespaces.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install psmisc: pidof.1 .. 
install -o root -g root -m 644 manual/psmisc/man1/pidof.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install SysVinit: pidof.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/pidof.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: pig.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/pig.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install netkit: ping.8 .. 
install -o root -g root -m 644 manual/netkit/man8/ping.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: pinky.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/pinky.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pipe2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pipe2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pipe.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pipe.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pipe.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/pipe.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: pivot_root.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pivot_root.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: pivot_root.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/pivot_root.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: pkey_mprotect.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pkey_mprotect.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install procps: pkill.1 .. 
install -o root -g root -m 644 manual/procps/man1/pkill.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pldd.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/pldd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: plipconfig.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/plipconfig.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install procps: pmap.1 .. 
install -o root -g root -m 644 manual/procps/man1/pmap.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pmap_getmaps.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pmap_getmaps.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pmap_getport.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pmap_getport.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pmap_rmtcall.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pmap_rmtcall.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pmap_set.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pmap_set.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pmap_unset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pmap_unset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: poll.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/poll.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install bsd-games: pom.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/pom.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: popen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/popen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: port.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/port.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install shadow: porttime.5 .. 
install -o root -g root -m 644 manual/shadow/man5/porttime.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: posix_fadvise.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/posix_fadvise.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: posix_fallocate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/posix_fallocate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: posix_memalign.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/posix_memalign.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: posix_openpt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/posix_openpt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: posixoptions.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/posixoptions.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: pow10.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pow10.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pow10f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pow10f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pow10l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pow10l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pow.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pow.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install SysVinit: poweroff.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/poweroff.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: powf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/powf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: powl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/powl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ppoll.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ppoll.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install ppp: pppd.8 .. 
install -o root -g root -m 644 manual/ppp/man8/pppd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ppp: pppdump.8 .. 
install -o root -g root -m 644 manual/ppp/man8/pppdump.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: pppoe-relay.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/pppoe-relay.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: pppoe-server.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/pppoe-server.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: pppoe-sniff.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/pppoe-sniff.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rp-pppoe: pppoe-wrapper.1 .. 
install -o root -g root -m 644 manual/rp-pppoe/man1/pppoe-wrapper.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install rp-pppoe: pppoe.conf.5 .. 
install -o root -g root -m 644 manual/rp-pppoe/man5/pppoe.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install rp-pppoe: pppoe.8 .. 
install -o root -g root -m 644 manual/rp-pppoe/man8/pppoe.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ppp: pppstats.8 .. 
install -o root -g root -m 644 manual/ppp/man8/pppstats.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: ppt.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/ppt.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_coreutils: pr.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/pr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install sendmail: praliases.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/praliases.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: prctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/prctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pread64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pread64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pread.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pread.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: preadv2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/preadv2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: preadv.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/preadv.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: precedence.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/precedence.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install bsd-games: primes.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/primes.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install lpr-linux: printcap.5 .. 
install -o root -g root -m 644 manual/lpr-linux/man5/printcap.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_coreutils: printenv.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/printenv.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: printf.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/printf.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: printf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/printf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: prlimit64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/prlimit64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: prlimit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/prlimit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: proc.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/proc.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: process_vm_readv.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/process_vm_readv.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: process_vm_writev.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/process_vm_writev.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: procfs.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/procfs.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install procinfo: procinfo.8 .. 
install -o root -g root -m 644 manual/procinfo/man8/procinfo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install procmail: procmail.1 .. 
install -o root -g root -m 644 manual/procmail/man1/procmail.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install procmail: procmailex.5 .. 
install -o root -g root -m 644 manual/procmail/man5/procmailex.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install procmail: procmailrc.5 .. 
install -o root -g root -m 644 manual/procmail/man5/procmailrc.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install procmail: procmailsc.5 .. 
install -o root -g root -m 644 manual/procmail/man5/procmailsc.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: prof.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/prof.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: profil.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/profil.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: program_invocation_name.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/program_invocation_name.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: program_invocation_short_name.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/program_invocation_short_name.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: protocols.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/protocols.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install procps: ps.1 .. 
install -o root -g root -m 644 manual/procps/man1/ps.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pselect6.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pselect6.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pselect.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pselect.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netatalk: psf.8 .. 
install -o root -g root -m 644 manual/netatalk/man8/psf.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: psiginfo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/psiginfo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: psignal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/psignal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install mirrordir: pslogin.1 .. 
install -o root -g root -m 644 manual/mirrordir/man1/pslogin.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netatalk: psorder.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/psorder.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install psmisc: pstree.1 .. 
install -o root -g root -m 644 manual/psmisc/man1/pstree.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install glibc-linuxthreads: pthread_atfork.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_atfork.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_destroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getaffinity_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getaffinity_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getdetachstate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getdetachstate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getguardsize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getguardsize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getinheritsched.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getinheritsched.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getschedparam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getschedparam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getschedpolicy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getschedpolicy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getscope.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getscope.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getstack.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getstack.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getstackaddr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getstackaddr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_getstacksize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_getstacksize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_init.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setaffinity_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setaffinity_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setdetachstate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setdetachstate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setguardsize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setguardsize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setinheritsched.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setinheritsched.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setschedparam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setschedparam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setschedpolicy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setschedpolicy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setscope.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setscope.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setstack.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setstack.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setstackaddr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setstackaddr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_attr_setstacksize.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_attr_setstacksize.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_cancel.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_cancel.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_cleanup_pop.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_cleanup_pop.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_cleanup_pop_restore_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_cleanup_pop_restore_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_cleanup_push.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_cleanup_push.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_cleanup_push_defer_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_cleanup_push_defer_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_cond_broadcast.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_cond_broadcast.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_cond_destroy.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_cond_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_cond_init.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_cond_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_cond_signal.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_cond_signal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_cond_timedwait.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_cond_timedwait.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_cond_wait.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_cond_wait.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_condattr_destroy.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_condattr_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_condattr_init.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_condattr_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_detach.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_detach.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_equal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_equal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_exit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_exit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_getaffinity_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_getaffinity_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_getattr_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_getattr_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_getconcurrency.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_getconcurrency.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_getcpuclockid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_getcpuclockid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_getname_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_getname_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_getschedparam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_getschedparam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_join.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_join.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_key_create.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_key_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_kill.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_kill.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_kill_other_threads_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_kill_other_threads_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutex_destroy.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutex_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutex_init.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutex_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutex_lock.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutex_lock.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutex_trylock.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutex_trylock.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutex_unlock.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutex_unlock.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutexattr_destroy.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutexattr_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutexattr_getkind_np.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutexattr_getkind_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutexattr_init.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutexattr_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_mutexattr_setkind_np.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_mutexattr_setkind_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install glibc-linuxthreads: pthread_once.3 .. 
install -o root -g root -m 644 manual/glibc-linuxthreads/man3/pthread_once.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_rwlockattr_getkind_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_rwlockattr_getkind_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_rwlockattr_setkind_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_rwlockattr_setkind_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_self.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_self.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setaffinity_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setaffinity_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setcancelstate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setcancelstate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setcanceltype.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setcanceltype.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setconcurrency.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setconcurrency.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setname_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setname_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setschedparam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setschedparam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_setschedprio.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_setschedprio.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_sigmask.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_sigmask.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_sigqueue.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_sigqueue.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_testcancel.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_testcancel.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_timedjoin_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_timedjoin_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_tryjoin_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_tryjoin_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthread_yield.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pthread_yield.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pthreads.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/pthreads.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: ptmx.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/ptmx.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: pts.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/pts.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: ptsname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ptsname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ptsname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ptsname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: ptx.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/ptx.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pty.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/pty.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: putc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putchar.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putchar.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putchar_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putchar_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/putmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: putpmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/putpmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: putpwent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putpwent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: puts.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/puts.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putspent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putspent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pututline.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pututline.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pututxline.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pututxline.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putw.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putw.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putwc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putwc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putwc_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putwc_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putwchar.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putwchar.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: putwchar_unlocked.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/putwchar_unlocked.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: pvalloc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/pvalloc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: pw_auth.3 .. 
install -o root -g root -m 644 manual/shadow/man3/pw_auth.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: pwauth.8 .. 
install -o root -g root -m 644 manual/shadow/man8/pwauth.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: pwck.8 .. 
install -o root -g root -m 644 manual/shadow/man8/pwck.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: pwconv.8 .. 
install -o root -g root -m 644 manual/shadow/man8/pwconv.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: pwd.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/pwd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install procps: pwdx.1 .. 
install -o root -g root -m 644 manual/procps/man1/pwdx.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: pwrite64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pwrite64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pwrite.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pwrite.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pwritev2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pwritev2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: pwritev.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/pwritev.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: pwunconv.8 .. 
install -o root -g root -m 644 manual/shadow/man8/pwunconv.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: pwupdate.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/pwupdate.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: qecvt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qecvt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: qecvt_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qecvt_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: qfcvt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qfcvt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: qfcvt_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qfcvt_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: qgcvt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qgcvt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: qsort.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qsort.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: qsort_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/qsort_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install sendmail: qtool.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/qtool.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: query_module.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/query_module.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install bsd-games: quiz.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/quiz.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install quota: quot.8 .. 
install -o root -g root -m 644 manual/quota/man8/quot.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install quota: quota.1 .. 
install -o root -g root -m 644 manual/quota/man1/quota.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install quota: quotacheck.8 .. 
install -o root -g root -m 644 manual/quota/man8/quotacheck.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install quota: quotaon.8 .. 
install -o root -g root -m 644 manual/quota/man8/quotaon.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: rain.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/rain.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: raise.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/raise.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ram.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/ram.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: rand.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rand.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rand_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rand_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: random.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/random.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: random.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/random.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install bsd-games: random.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/random.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: random_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/random_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_binutils: ranlib.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/ranlib.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: rarp.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/rarp.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: raw.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/raw.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install util-linux: raw.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/raw.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: rawmemchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rawmemchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_bash: rbash.1 .. 
install -o root -g root -m 644 manual/GNU_bash/man1/rbash.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: rcmd.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rcmd.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rcmd_af.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rcmd_af.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: rcp.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rcp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: rcs.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rcs.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: rcsclean.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rcsclean.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: rcsdiff.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rcsdiff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: rcsfile.5 .. 
install -o root -g root -m 644 manual/GNU_rcs/man5/rcsfile.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install GNU_rcs: rcsfreeze.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rcsfreeze.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: rcsintro.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rcsintro.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_rcs: rcsmerge.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rcsmerge.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install rdate: rdate.1 .. 
install -o root -g root -m 644 manual/rdate/man1/rdate.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: re_comp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/re_comp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: re_exec.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/re_exec.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: read.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/read.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: readahead.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/readahead.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install cdrecord: readcd.1 .. 
install -o root -g root -m 644 manual/cdrecord/man1/readcd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: readdir.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/readdir.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: readdir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/readdir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: readlink.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/readlink.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: readlink.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/readlink.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: readlinkat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/readlinkat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: readv.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/readv.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: realloc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/realloc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: reallocarray.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/reallocarray.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: realpath.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/realpath.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: realpath.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/realpath.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: reboot.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/reboot.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install SysVinit: reboot.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/reboot.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: recno.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/recno.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install mirrordir: recursdir.1 .. 
install -o root -g root -m 644 manual/mirrordir/man1/recursdir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: recv.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/recv.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: recvfrom.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/recvfrom.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: recvmmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/recvmmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: recvmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/recvmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_ed: red.1 .. 
install -o root -g root -m 644 manual/GNU_ed/man1/red.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: refer.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/refer.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: regcomp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/regcomp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: regerror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/regerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: regex.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/regex.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: regex.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/regex.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: regexec.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/regexec.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: regfree.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/regfree.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: registerrpc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/registerrpc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install reiserfsprogs: reiserfsck.8 .. 
install -o root -g root -m 644 manual/reiserfsprogs/man8/reiserfsck.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install reiserfsprogs: reiserfstune.8 .. 
install -o root -g root -m 644 manual/reiserfsprogs/man8/reiserfstune.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: remainder.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remainder.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: remainderf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remainderf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: remainderl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remainderl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: remap_file_pages.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/remap_file_pages.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: remove.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remove.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: removexattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/removexattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: remque.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remque.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: remquo.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remquo.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: remquof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remquof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: remquol.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/remquol.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: rename.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/rename.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: rename.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rename.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: renameat2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/renameat2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: renameat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/renameat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: renice.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/renice.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: repertoiremap.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/repertoiremap.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install quota: repquota.8 .. 
install -o root -g root -m 644 manual/quota/man8/repquota.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: res_init.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_mkquery.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_mkquery.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_nclose.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_nclose.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_ninit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_ninit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_nmkquery.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_nmkquery.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_nquery.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_nquery.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_nquerydomain.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_nquerydomain.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_nsearch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_nsearch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_nsend.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_nsend.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_query.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_query.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_querydomain.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_querydomain.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_search.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_search.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: res_send.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/res_send.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: resize2fs.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/resize2fs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install reiserfsprogs: resize_reiserfs.8 .. 
install -o root -g root -m 644 manual/reiserfsprogs/man8/resize_reiserfs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: resolv.conf.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/resolv.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: resolver.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/resolver.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: resolver.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/resolver.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: restart_syscall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/restart_syscall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: rev.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/rev.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ypserv: revnetgroup.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/revnetgroup.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: rewind.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rewind.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rewinddir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rewinddir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: rexec.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rexec.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: rexec.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rexec.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rexec_af.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rexec_af.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: rexecd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rexecd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: rindex.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rindex.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rint.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rint.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rintl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rintl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: ripquery.8 .. 
install -o root -g root -m 644 manual/netkit/man8/ripquery.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_rcs: rlog.1 .. 
install -o root -g root -m 644 manual/GNU_rcs/man1/rlog.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rlogin.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rlogin.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rlogind.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rlogind.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: rm.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/rm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install sendmail: rmail.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/rmail.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: rmdir.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/rmdir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: rmdir.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rmdir.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install module-init-tools: rmmod.8 .. 
install -o root -g root -m 644 manual/module-init-tools/man8/rmmod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: robots.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/robots.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_groff: roff.7 .. 
install -o root -g root -m 644 manual/GNU_groff/man7/roff.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install bsd-games-non-free: rogue.6 .. 
install -o root -g root -m 644 manual/bsd-games-non-free/man6/rogue.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install bsd-games: rot13.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/rot13.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: round.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/round.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: roundf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/roundf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: roundl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/roundl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install net-tools: route.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/route.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: routed.8 .. 
install -o root -g root -m 644 manual/netkit/man8/routed.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: rpc.bootparamd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rpc.bootparamd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: rpc.lockd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/rpc.lockd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: rpc.mountd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/rpc.mountd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: rpc.nfsd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/rpc.nfsd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: rpc.rquotad.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/rpc.rquotad.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: rpc.rusersd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rpc.rusersd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: rpc.rwalld.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rpc.rwalld.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-utils: rpc.statd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/rpc.statd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install nfs-server: rpc.ugidd.8 .. 
install -o root -g root -m 644 manual/nfs-server/man8/rpc.ugidd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: rpc.yppasswdd.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/rpc.yppasswdd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: rpc.ypxfrd.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/rpc.ypxfrd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: rpc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rpc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rpc.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/rpc.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install netkit: rpcgen.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rpcgen.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rpcinfo.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rpcinfo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rpm: rpm2cpio.8 .. 
install -o root -g root -m 644 manual/rpm/man8/rpm2cpio.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rpm: rpm.8 .. 
install -o root -g root -m 644 manual/rpm/man8/rpm.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: rpmatch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rpmatch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install rpm: rpmbuild.8 .. 
install -o root -g root -m 644 manual/rpm/man8/rpmbuild.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rpm: rpmcache.8 .. 
install -o root -g root -m 644 manual/rpm/man8/rpmcache.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rpm: rpmgraph.8 .. 
install -o root -g root -m 644 manual/rpm/man8/rpmgraph.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install quota: rquota.3 .. 
install -o root -g root -m 644 manual/quota/man3/rquota.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install nfs-utils: rquotad.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/rquotad.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: rresvport.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rresvport.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rresvport_af.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rresvport_af.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: rsh.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rsh.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rshd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rshd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install rssh: rssh.conf.5 .. 
install -o root -g root -m 644 manual/rssh/man5/rssh.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install rssh: rssh.1 .. 
install -o root -g root -m 644 manual/rssh/man1/rssh.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: rt_sigaction.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rt_sigaction.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: rt_sigpending.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rt_sigpending.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: rt_sigprocmask.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rt_sigprocmask.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: rt_sigreturn.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rt_sigreturn.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: rt_sigsuspend.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rt_sigsuspend.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: rt_sigtimedwait.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/rt_sigtimedwait.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: rtc.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/rtc.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: rtime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rtime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rtnetlink.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/rtnetlink.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: rtnetlink.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/rtnetlink.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_coreutils: runcon.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/runcon.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install SysVinit: runlevel.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/runlevel.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: rup.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rup.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: ruptime.1 .. 
install -o root -g root -m 644 manual/netkit/man1/ruptime.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ruserok.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ruserok.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ruserok_af.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ruserok_af.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: rusers.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rusers.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rusersd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rusersd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: rwall.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rwall.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rwalld.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rwalld.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: rwho.1 .. 
install -o root -g root -m 644 manual/netkit/man1/rwho.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: rwhod.8 .. 
install -o root -g root -m 644 manual/netkit/man8/rwhod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: sail.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/sail.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: sbrk.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sbrk.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: scalb.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalb.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalbf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalbf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalbl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalbl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalbln.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalbln.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalblnf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalblnf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalblnl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalblnl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalbn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalbn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalbnf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalbnf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scalbnl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scalbnl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scandir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scandir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scandirat.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scandirat.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: scanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/scanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install cdrecord: scgcheck.1 .. 
install -o root -g root -m 644 manual/cdrecord/man1/scgcheck.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sched.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/sched.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: sched_get_priority_max.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_get_priority_max.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_get_priority_min.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_get_priority_min.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_getaffinity.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_getaffinity.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_getattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_getattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_getcpu.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sched_getcpu.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sched_getparam.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_getparam.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_getscheduler.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_getscheduler.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_rr_get_interval.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_rr_get_interval.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_setaffinity.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_setaffinity.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_setattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_setattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_setparam.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_setparam.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_setscheduler.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_setscheduler.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sched_yield.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sched_yield.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_screen: screen.1 .. 
install -o root -g root -m 644 manual/GNU_screen/man1/screen.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: script.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/script.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: scriptlive.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/scriptlive.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: scriptreplay.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/scriptreplay.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install pcmcia-cs: scsi_info.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/scsi_info.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: sd.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/sd.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install gnumaniak: sdiff.1 .. 
install -o root -g root -m 644 manual/gnumaniak/man1/sdiff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install mirrordir: secure-mcserv.1 .. 
install -o root -g root -m 644 manual/mirrordir/man1/secure-mcserv.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: secure_getenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/secure_getenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: securetty.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/securetty.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: security.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/security.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_sed: sed.1 .. 
install -o root -g root -m 644 manual/GNU_sed/man1/sed.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: seed48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/seed48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: seed48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/seed48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: seekdir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/seekdir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: select.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/select.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: select_tut.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/select_tut.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sem_close.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_close.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_destroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_getvalue.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_getvalue.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_init.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_init.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_open.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_open.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_overview.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/sem_overview.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: sem_post.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_post.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_timedwait.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_timedwait.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_trywait.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_trywait.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_unlink.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_unlink.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sem_wait.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sem_wait.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: semctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/semctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: semget.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/semget.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: semop.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/semop.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: semtimedop.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/semtimedop.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: send.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/send.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sendfile64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sendfile64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sendfile.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sendfile.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install sendmail: sendmail.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/sendmail.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: sendmmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sendmmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sendmsg.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sendmsg.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sendto.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sendto.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: seq.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/seq.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: services.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/services.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: set_mempolicy.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/set_mempolicy.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: set_thread_area.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/set_thread_area.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: set_tid_address.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/set_tid_address.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setaliasent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setaliasent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setbuf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setbuf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setbuffer.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setbuffer.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setcontext.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setcontext.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setdomainname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setdomainname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setegid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setegid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: seteuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/seteuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install acl: setfacl.1 .. 
install -o root -g root -m 644 manual/acl/man1/setfacl.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: setfsent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setfsent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setfsgid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setfsgid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setfsgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setfsgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setfsuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setfsuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setfsuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setfsuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setgid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setgid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setgroups32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setgroups32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setgroups.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setgroups.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sethostent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sethostent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sethostid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sethostid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sethostname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sethostname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setitimer.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setitimer.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setjmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setjmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setkey.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setkey.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setkey_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setkey_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setlinebuf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setlinebuf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setlocale.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setlocale.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setlogmask.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setlogmask.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setmntent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setmntent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setnetent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setnetent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setnetgrent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setnetgrent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setns.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setns.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install pciutils: setpci.8 .. 
install -o root -g root -m 644 manual/pciutils/man8/setpci.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: setpgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setpgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setpgrp.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setpgrp.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install pcmcia-cs: setpnp.8 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man8/setpnp.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: setpriority.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setpriority.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netkit: setproctitle.3 .. 
install -o root -g root -m 644 manual/netkit/man3/setproctitle.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setprotoent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setprotoent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setpwent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setpwent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install quota: setquota.8 .. 
install -o root -g root -m 644 manual/quota/man8/setquota.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: setregid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setregid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setregid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setregid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setresgid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setresgid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setresgid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setresgid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setresuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setresuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setresuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setresuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setreuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setreuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setreuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setreuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setrlimit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setrlimit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setrpcent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setrpcent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install setserial: setserial.8 .. 
install -o root -g root -m 644 manual/setserial/man8/setserial.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: setservent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setservent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setsid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setsid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setsockopt.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setsockopt.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setspent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setspent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setstate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setstate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setstate_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setstate_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: setterm.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/setterm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: settimeofday.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/settimeofday.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setttyent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setttyent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setuid32.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setuid32.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setuid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setuid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setup.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setup.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: setusershell.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setusershell.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setutent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setutent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setutxent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setutxent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setvbuf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/setvbuf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: setxattr.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/setxattr.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: sfdisk.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/sfdisk.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: sg.1 .. 
install -o root -g root -m 644 manual/shadow/man1/sg.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sgetmask.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sgetmask.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sgetspent.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sgetspent.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sgetspent_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sgetspent_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: sha1sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sha1sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: sha224sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sha224sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: sha256sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sha256sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: sha384sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sha384sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: sha512sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sha512sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: shadow.3 .. 
install -o root -g root -m 644 manual/shadow/man3/shadow.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install shadow: shadow.5 .. 
install -o root -g root -m 644 manual/shadow/man5/shadow.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install shadow: shadowconfig.8 .. 
install -o root -g root -m 644 manual/shadow/man8/shadowconfig.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_sharutils: shar.1 .. 
install -o root -g root -m 644 manual/GNU_sharutils/man1/shar.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: shells.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/shells.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: shm_open.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/shm_open.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: shm_overview.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/shm_overview.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: shm_unlink.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/shm_unlink.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: shmat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/shmat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: shmctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/shmctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: shmdt.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/shmdt.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: shmget.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/shmget.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: shmop.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/shmop.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install nfs-utils: showmount.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/showmount.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: shred.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/shred.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: shuf.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/shuf.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: shutdown.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/shutdown.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install SysVinit: shutdown.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/shutdown.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: sigabbrev_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigabbrev_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigaction.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigaction.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigaddset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigaddset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigaltstack.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigaltstack.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigandset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigandset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigblock.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigblock.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigdelset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigdelset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigdescr_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigdescr_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigemptyset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigemptyset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigevent.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/sigevent.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: sigfillset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigfillset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: siggetmask.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/siggetmask.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sighold.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sighold.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigignore.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigignore.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: siginterrupt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/siginterrupt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigisemptyset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigisemptyset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigismember.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigismember.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: siglongjmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/siglongjmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigmask.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigmask.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: signal.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/signal.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: signal.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/signal.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: signalfd4.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/signalfd4.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: signalfd.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/signalfd.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: signbit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/signbit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: signgam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/signgam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: significand.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/significand.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: significandf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/significandf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: significandl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/significandl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigorset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigorset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigpause.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigpause.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigpending.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigpending.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigprocmask.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigprocmask.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigqueue.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigqueue.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigrelse.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigrelse.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigreturn.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigreturn.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigsetjmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigsetjmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigsetmask.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigsetmask.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigsetops.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigsetops.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigstack.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigstack.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigsuspend.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigsuspend.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigtimedwait.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigtimedwait.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sigvec.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigvec.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigwait.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sigwait.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sigwaitinfo.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sigwaitinfo.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sincos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sincos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sincosf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sincosf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sincosl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sincosl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sinf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sinf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netatalk: single2bin.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/single2bin.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sinh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sinh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sinhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sinhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sinhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sinhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sinl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sinl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_binutils: size.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/size.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sk98lin.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/sk98lin.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install procps: skill.1 .. 
install -o root -g root -m 644 manual/procps/man1/skill.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: slabinfo.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/slabinfo.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install procps: slabtop.1 .. 
install -o root -g root -m 644 manual/procps/man1/slabtop.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: slattach.8 .. 
install -o root -g root -m 644 manual/net-tools/man8/slattach.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: sleep.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sleep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sleep.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sleep.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sln.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/sln.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install sendmail: smrsh.8 .. 
install -o root -g root -m 644 manual/sendmail/man8/smrsh.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install bsd-games: snake.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/snake.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install procps: snice.1 .. 
install -o root -g root -m 644 manual/procps/man1/snice.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ucd-snmp: snmp.conf.5 .. 
install -o root -g root -m 644 manual/ucd-snmp/man5/snmp.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install ucd-snmp: snmp_config.5 .. 
install -o root -g root -m 644 manual/ucd-snmp/man5/snmp_config.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install ucd-snmp: snmpbulkget.1 .. 
install -o root -g root -m 644 manual/ucd-snmp/man1/snmpbulkget.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ucd-snmp: snmpconf.1 .. 
install -o root -g root -m 644 manual/ucd-snmp/man1/snmpconf.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ucd-snmp: snmpd.conf.5 .. 
install -o root -g root -m 644 manual/ucd-snmp/man5/snmpd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install ucd-snmp: snmpdf.1 .. 
install -o root -g root -m 644 manual/ucd-snmp/man1/snmpdf.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ucd-snmp: snmptrapd.conf.5 .. 
install -o root -g root -m 644 manual/ucd-snmp/man5/snmptrapd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install ucd-snmp: snmptrapd.8 .. 
install -o root -g root -m 644 manual/ucd-snmp/man8/snmptrapd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: snprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/snprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: snscore.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/snscore.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: sockatmark.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sockatmark.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: socket.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/socket.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: socket.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/socket.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: socketcall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/socketcall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: socketpair.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/socketpair.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install procinfo: socklist.8 .. 
install -o root -g root -m 644 manual/procinfo/man8/socklist.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_groff: soelim.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/soelim.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: sort.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sort.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: splice.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/splice.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: split.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/split.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sprof.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/sprof.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: spu_create.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/spu_create.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: spu_run.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/spu_run.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sqrt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sqrt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sqrtf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sqrtf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sqrtl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sqrtl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: srand48.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/srand48.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: srand48_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/srand48_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: srand.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/srand.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: srandom.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/srandom.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: srandom_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/srandom_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sscanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sscanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ssetmask.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ssetmask.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: ssignal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ssignal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: st.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/st.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install pcmcia-cs: stab.5 .. 
install -o root -g root -m 644 manual/pcmcia-cs/man5/stab.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: standards.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/standards.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: stat64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/stat64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: stat.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/stat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: stat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/stat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install nfs-utils: statd.8 .. 
install -o root -g root -m 644 manual/nfs-utils/man8/statd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: statfs64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/statfs64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: statfs.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/statfs.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: statvfs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/statvfs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stdarg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stdarg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: stdbuf.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/stdbuf.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: stderr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stderr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stdin.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stdin.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stdio.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stdio.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stdio_ext.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stdio_ext.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stdout.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stdout.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/stime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: stpcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stpcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: stpncpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/stpncpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcasecmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcasecmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcasestr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcasestr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcat.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcat.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strchrnul.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strchrnul.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcoll.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcoll.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strcspn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strcspn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strdup.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strdup.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strdupa.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strdupa.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strerror.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strerror.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strerror_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strerror_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strerror_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strerror_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strerrordesc_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strerrordesc_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strerrorname_np.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strerrorname_np.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: strfile.8 .. 
install -o root -g root -m 644 manual/bsd-games/man8/strfile.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: strfmon.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strfmon.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strfmon_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strfmon_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strfry.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strfry.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strftime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strftime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: string.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/string.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_binutils: strings.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/strings.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_binutils: strip.1 .. 
install -o root -g root -m 644 manual/GNU_binutils/man1/strip.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: strlen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strlen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strncasecmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strncasecmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strncat.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strncat.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strncmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strncmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strncpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strncpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strndup.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strndup.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strndupa.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strndupa.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strnlen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strnlen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strpbrk.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strpbrk.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strptime.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strptime.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strrchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strrchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strsep.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strsep.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strsignal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strsignal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strspn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strspn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strstr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strstr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtod.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtod.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtoimax.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtoimax.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtok.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtok.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtok_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtok_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtol.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtol.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtold.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtold.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtoll.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtoll.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtoq.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtoq.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtoul.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtoul.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtoull.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtoull.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtoumax.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtoumax.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strtouq.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strtouq.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strverscmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strverscmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: strxfrm.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/strxfrm.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: stty.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/stty.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: stty.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/stty.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: su.1 .. 
install -o root -g root -m 644 manual/shadow/man1/su.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install shadow: suauth.5 .. 
install -o root -g root -m 644 manual/shadow/man5/suauth.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install sudo: sudo.conf.5 .. 
install -o root -g root -m 644 manual/sudo/man5/sudo.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install sudo: sudo.8 .. 
install -o root -g root -m 644 manual/sudo/man8/sudo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install sudo: sudoedit.8 .. 
install -o root -g root -m 644 manual/sudo/man8/sudoedit.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install sudo: sudoers.ldap.5 .. 
install -o root -g root -m 644 manual/sudo/man5/sudoers.ldap.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install sudo: sudoers.5 .. 
install -o root -g root -m 644 manual/sudo/man5/sudoers.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install sudo: sudoreplay.8 .. 
install -o root -g root -m 644 manual/sudo/man8/sudoreplay.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: suffixes.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/suffixes.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install shadow: sulogin.8 .. 
install -o root -g root -m 644 manual/shadow/man8/sulogin.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: sum.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sum.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: svc_destroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_freeargs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_freeargs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_getargs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_getargs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_getcaller.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_getcaller.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_getreq.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_getreq.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_getreqset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_getreqset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_register.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_register.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_run.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_run.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_sendreply.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_sendreply.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svc_unregister.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svc_unregister.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_auth.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_auth.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_decode.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_decode.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_noproc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_noproc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_noprog.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_noprog.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_progvers.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_progvers.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_systemerr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_systemerr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcerr_weakauth.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcerr_weakauth.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcfd_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcfd_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcraw_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcraw_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svctcp_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svctcp_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcudp_bufcreate.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcudp_bufcreate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: svcudp_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/svcudp_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: swab.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/swab.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: swapcontext.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/swapcontext.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: swapoff.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/swapoff.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: swapoff.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/swapoff.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: swapon.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/swapon.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: swapon.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/swapon.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: swprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/swprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: symlink.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/symlink.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: symlink.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/symlink.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: symlinkat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/symlinkat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: sync.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/sync.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: sync.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sync.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sync_file_range2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sync_file_range2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sync_file_range.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sync_file_range.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: syncfs.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/syncfs.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sys_errlist.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sys_errlist.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sys_nerr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sys_nerr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sys_siglist.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sys_siglist.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: syscall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/syscall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: syscalls.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/syscalls.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sysconf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sysconf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install procps: sysctl.conf.5 .. 
install -o root -g root -m 644 manual/procps/man5/sysctl.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: sysctl.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sysctl.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install procps: sysctl.8 .. 
install -o root -g root -m 644 manual/procps/man8/sysctl.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: sysfs.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sysfs.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: sysinfo.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/sysinfo.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install sysklogd: sysklogd.8 .. 
install -o root -g root -m 644 manual/sysklogd/man8/sysklogd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install sysklogd: syslog.conf.5 .. 
install -o root -g root -m 644 manual/sysklogd/man5/syslog.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: syslog.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/syslog.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: syslog.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/syslog.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install sysklogd: syslogd.8 .. 
install -o root -g root -m 644 manual/sysklogd/man8/syslogd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: system.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/system.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: sysv_signal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/sysv_signal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: tac.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/tac.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: tail.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/tail.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install apmd: tailf.1 .. 
install -o root -g root -m 644 manual/apmd/man1/tailf.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: talk.1 .. 
install -o root -g root -m 644 manual/netkit/man1/talk.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: talkd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/talkd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: tan.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tan.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tanh.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tanh.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tanhf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tanhf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tanhl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tanhl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tanl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tanl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_tar: tar.1 .. 
install -o root -g root -m 644 manual/GNU_tar/man1/tar.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_groff: tbl.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/tbl.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: tcdrain.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcdrain.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcflow.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcflow.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcflush.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcflush.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcgetattr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcgetattr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcgetpgrp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcgetpgrp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcgetsid.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcgetsid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcp.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/tcp.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install tcp_wrappers: tcpd.8 .. 
install -o root -g root -m 644 manual/tcp_wrappers/man8/tcpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install tcp_wrappers: tcpdchk.8 .. 
install -o root -g root -m 644 manual/tcp_wrappers/man8/tcpdchk.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install tcp_wrappers: tcpdmatch.8 .. 
install -o root -g root -m 644 manual/tcp_wrappers/man8/tcpdmatch.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install tcpdump: tcpdump.1 .. 
install -o root -g root -m 644 manual/tcpdump/man1/tcpdump.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: tcsendbreak.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcsendbreak.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcsetattr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcsetattr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tcsetpgrp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tcsetpgrp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install tcsh: tcsh.1 .. 
install -o root -g root -m 644 manual/tcsh/man1/tcsh.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: tdelete.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tdelete.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tdestroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tdestroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: teachgammon.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/teachgammon.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_coreutils: tee.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/tee.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: tee.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/tee.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install SysVinit: telinit.8 .. 
install -o root -g root -m 644 manual/SysVinit/man8/telinit.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: telldir.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/telldir.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netkit: telnet.1 .. 
install -o root -g root -m 644 manual/netkit/man1/telnet.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: telnetd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/telnetd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: telnetlogin.8 .. 
install -o root -g root -m 644 manual/netkit/man8/telnetlogin.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: tempnam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tempnam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: termcap.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/termcap.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: termio.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/termio.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: termios.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/termios.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: test.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/test.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_texinfo: texi2dvi.1 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man1/texi2dvi.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_texinfo: texindex.1 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man1/texindex.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_texinfo: texinfo.5 .. 
install -o root -g root -m 644 manual/GNU_texinfo/man5/texinfo.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: tfind.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tfind.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_groff: tfmtodit.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/tfmtodit.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: tftp.1 .. 
install -o root -g root -m 644 manual/netkit/man1/tftp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install netkit: tftpd.8 .. 
install -o root -g root -m 644 manual/netkit/man8/tftpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: tgamma.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tgamma.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tgammaf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tgammaf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tgammal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tgammal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tgkill.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/tgkill.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: time.1 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man1/time.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: time.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/time.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: time.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/time.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install netkit: timed.8 .. 
install -o root -g root -m 644 manual/netkit/man8/timed.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: timedc.8 .. 
install -o root -g root -m 644 manual/netkit/man8/timedc.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: timegm.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timegm.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: timelocal.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timelocal.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netatalk: timelord.8 .. 
install -o root -g root -m 644 manual/netatalk/man8/timelord.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: timeout.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/timeout.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: timer_delete.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/timer_delete.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: timeradd.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timeradd.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: timerclear.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timerclear.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: timercmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timercmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: timerfd_create.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/timerfd_create.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: timerfd_gettime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/timerfd_gettime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: timerfd_settime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/timerfd_settime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: timerisset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timerisset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: timersub.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timersub.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: times.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/times.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: timezone.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/timezone.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tis-620.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/tis-620.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: tkill.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/tkill.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install rp-pppoe: tkpppoe.1 .. 
install -o root -g root -m 644 manual/rp-pppoe/man1/tkpppoe.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install procps: tload.1 .. 
install -o root -g root -m 644 manual/procps/man1/tload.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: tmpfile.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tmpfile.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tmpnam.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tmpnam.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tmpnam_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tmpnam_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: toascii.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/toascii.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tolower.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tolower.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tolower_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tolower_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install procps: top.1 .. 
install -o root -g root -m 644 manual/procps/man1/top.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: touch.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/touch.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: toupper.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/toupper.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: toupper_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/toupper_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: towctrans.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/towctrans.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: towlower.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/towlower.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: towlower_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/towlower_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: towupper.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/towupper.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: towupper_l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/towupper_l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: tr.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/tr.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: trek.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/trek.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install GNU_groff: troff.1 .. 
install -o root -g root -m 644 manual/GNU_groff/man1/troff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: true.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/true.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: trunc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/trunc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: truncate64.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/truncate64.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: truncate.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/truncate.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: truncate.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/truncate.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: truncf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/truncf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: truncl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/truncl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tsearch.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tsearch.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: tsort.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/tsort.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: tty.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/tty.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: tty.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/tty.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: ttyS.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/ttyS.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: ttyname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ttyname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ttyname_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ttyname_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ttyslot.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ttyslot.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ttytype.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/ttytype.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install e2fsprogs: tune2fs.8 .. 
install -o root -g root -m 644 manual/e2fsprogs/man8/tune2fs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: tunelp.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/tunelp.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: tuxcall.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/tuxcall.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: twalk.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/twalk.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: twalk_r.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/twalk_r.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tzfile.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/tzfile.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: tzname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tzname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: tzselect.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/tzselect.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: tzset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/tzset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ualarm.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ualarm.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: udp.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/udp.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: udplite.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/udplite.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: ugetrlimit.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ugetrlimit.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install nfs-server: ugidd.8 .. 
install -o root -g root -m 644 manual/nfs-server/man8/ugidd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install util-linux: ul.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/ul.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ulckpwdf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ulckpwdf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ulimit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ulimit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: umask.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/umask.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: umount2.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/umount2.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: umount.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/umount.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install util-linux: umount.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/umount.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: uname.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/uname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: uname.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/uname.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netatalk: unbin.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/unbin.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: undocumented.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/undocumented.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_coreutils: unexpand.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/unexpand.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: ungetc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ungetc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ungetwc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ungetwc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install netatalk: unhex.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/unhex.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: unicode.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/unicode.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: unimplemented.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/unimplemented.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install GNU_coreutils: uniq.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/uniq.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: units.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/units.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: unix.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/unix.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install GNU_coreutils: unlink.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/unlink.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: unlink.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/unlink.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: unlinkat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/unlinkat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: unlocked_stdio.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/unlocked_stdio.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: unlockpt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/unlockpt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: unsetenv.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/unsetenv.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_sharutils: unshar.1 .. 
install -o root -g root -m 644 manual/GNU_sharutils/man1/unshar.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: unshare.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/unshare.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netatalk: unsingle.1 .. 
install -o root -g root -m 644 manual/netatalk/man1/unsingle.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install pciutils: update-pciids.8 .. 
install -o root -g root -m 644 manual/pciutils/man8/update-pciids.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_findutils: updatedb.1 .. 
install -o root -g root -m 644 manual/GNU_findutils/man1/updatedb.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: updwtmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/updwtmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: updwtmpx.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/updwtmpx.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install procps: uptime.1 .. 
install -o root -g root -m 644 manual/procps/man1/uptime.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: urandom.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/urandom.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: uri.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/uri.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: url.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/url.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: urn.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/urn.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: uselib.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/uselib.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: uselocale.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/uselocale.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: user_namespaces.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/user_namespaces.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install shadow: useradd.8 .. 
install -o root -g root -m 644 manual/shadow/man8/useradd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: userdel.8 .. 
install -o root -g root -m 644 manual/shadow/man8/userdel.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: usermod.8 .. 
install -o root -g root -m 644 manual/shadow/man8/usermod.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_coreutils: users.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/users.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: usleep.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/usleep.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ustat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/ustat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: utf-8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/utf-8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: utf8.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/utf8.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: utime.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/utime.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: utimensat.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/utimensat.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: utimes.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/utimes.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: utmp.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/utmp.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: utmpname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/utmpname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: utmpx.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/utmpx.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: utmpxname.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/utmpxname.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install GNU_uucp: uucp.1 .. 
install -o root -g root -m 644 manual/GNU_uucp/man1/uucp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_sharutils: uudecode.1 .. 
install -o root -g root -m 644 manual/GNU_sharutils/man1/uudecode.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install uudeview: uudeview.1 .. 
install -o root -g root -m 644 manual/uudeview/man1/uudeview.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_sharutils: uuencode.1 .. 
install -o root -g root -m 644 manual/GNU_sharutils/man1/uuencode.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_sharutils: uuencode.5 .. 
install -o root -g root -m 644 manual/GNU_sharutils/man5/uuencode.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install uudeview: uuenview.1 .. 
install -o root -g root -m 644 manual/uudeview/man1/uuenview.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install e2fsprogs: uuid.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_clear.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_clear.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_compare.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_compare.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_copy.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_copy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_generate.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_generate.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_is_null.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_is_null.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_parse.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_parse.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_time.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_time.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuid_unparse.3 .. 
install -o root -g root -m 644 manual/e2fsprogs/man3/uuid_unparse.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install e2fsprogs: uuidgen.1 .. 
install -o root -g root -m 644 manual/e2fsprogs/man1/uuidgen.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_uucp: uustat.1 .. 
install -o root -g root -m 644 manual/GNU_uucp/man1/uustat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_uucp: uux.1 .. 
install -o root -g root -m 644 manual/GNU_uucp/man1/uux.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: va_arg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/va_arg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: va_copy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/va_copy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: va_end.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/va_end.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: va_start.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/va_start.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install sendmail: vacation.1 .. 
install -o root -g root -m 644 manual/sendmail/man1/vacation.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: valloc.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/valloc.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install ucd-snmp: variables.5 .. 
install -o root -g root -m 644 manual/ucd-snmp/man5/variables.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install LDP_man-pages: vasprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vasprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vcs.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/vcs.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install LDP_man-pages: vcsa.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/vcsa.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install GNU_coreutils: vdir.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/vdir.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: vdprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vdprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vdso.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/vdso.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install LDP_man-pages: verr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/verr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: verrx.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/verrx.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: versionsort.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/versionsort.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vfork.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/vfork.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: vfprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vfprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vfscanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vfscanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vfwprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vfwprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vhangup.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/vhangup.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install shadow: vigr.8 .. 
install -o root -g root -m 644 manual/shadow/man8/vigr.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install shadow: vipw.8 .. 
install -o root -g root -m 644 manual/shadow/man8/vipw.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install netkit: vis.3 .. 
install -o root -g root -m 644 manual/netkit/man3/vis.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install sudo: visudo.8 .. 
install -o root -g root -m 644 manual/sudo/man8/visudo.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: vlimit.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vlimit.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vm86.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/vm86.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: vm86old.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/vm86old.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: vmsplice.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/vmsplice.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install procps: vmstat.8 .. 
install -o root -g root -m 644 manual/procps/man8/vmstat.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install eject: volname.1 .. 
install -o root -g root -m 644 manual/eject/man1/volname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: vprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vscanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vscanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vserver.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/vserver.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install vsftpd: vsftpd.conf.5 .. 
install -o root -g root -m 644 manual/vsftpd/man5/vsftpd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install vsftpd: vsftpd.8 .. 
install -o root -g root -m 644 manual/vsftpd/man8/vsftpd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: vsnprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vsnprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vsprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vsprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vsscanf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vsscanf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vswprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vswprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vsyslog.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vsyslog.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vtimes.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vtimes.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vwarn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vwarn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vwarnx.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vwarnx.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: vwprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/vwprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install procps: w.1 .. 
install -o root -g root -m 644 manual/procps/man1/w.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: wait3.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/wait3.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: wait4.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/wait4.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: wait.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/wait.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: waitid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/waitid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: waitpid.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/waitpid.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install SysVinit: wall.1 .. 
install -o root -g root -m 644 manual/SysVinit/man1/wall.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install bsd-games: wargames.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/wargames.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: warn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/warn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install quota: warnquota.8 .. 
install -o root -g root -m 644 manual/quota/man8/warnquota.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: warnx.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/warnx.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install procps: watch.1 .. 
install -o root -g root -m 644 manual/procps/man1/watch.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: wavelan.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/wavelan.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install GNU_coreutils: wc.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/wc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: wcpcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcpcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcpncpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcpncpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcrtomb.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcrtomb.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcscasecmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcscasecmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcscat.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcscat.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcschr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcschr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcscmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcscmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcscpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcscpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcscspn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcscspn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsdup.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsdup.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcslen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcslen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsncasecmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsncasecmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsncat.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsncat.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsncmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsncmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsncpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsncpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsnlen.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsnlen.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsnrtombs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsnrtombs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcspbrk.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcspbrk.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsrchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsrchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsrtombs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsrtombs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsspn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsspn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcsstr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcsstr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcstoimax.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcstoimax.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcstok.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcstok.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcstombs.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcstombs.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcstoumax.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcstoumax.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcswidth.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcswidth.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wctob.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wctob.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wctomb.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wctomb.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wctrans.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wctrans.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wctype.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wctype.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wcwidth.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wcwidth.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install man: whatis.1 .. 
install -o root -g root -m 644 manual/man/man1/whatis.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: whereis.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/whereis.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: who.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/who.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: whoami.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/whoami.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install util-linux: wipefs.8 .. 
install -o root -g root -m 644 manual/util-linux/man8/wipefs.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: wmemchr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wmemchr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wmemcmp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wmemcmp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wmemcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wmemcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wmemmove.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wmemmove.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wmempcpy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wmempcpy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wmemset.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wmemset.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wordexp.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wordexp.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: wordfree.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wordfree.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install bsd-games: worm.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/worm.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install bsd-games: worms.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/worms.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: wprintf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/wprintf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install util-linux: write.1 .. 
install -o root -g root -m 644 manual/util-linux/man1/write.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: write.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/write.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install netkit: writed.8 .. 
install -o root -g root -m 644 manual/netkit/man8/writed.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: writev.2 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man2/writev.2 $P/usr/share/man/ja_JP.UTF-8/man2
echo done.

echo -n install LDP_man-pages: wtmp.5 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man5/wtmp.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install bsd-games: wump.6 .. 
install -o root -g root -m 644 manual/bsd-games/man6/wump.6 $P/usr/share/man/ja_JP.UTF-8/man6
echo done.

echo -n install LDP_man-pages: x25.7 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man7/x25.7 $P/usr/share/man/ja_JP.UTF-8/man7
echo done.

echo -n install apmd: xapm.1 .. 
install -o root -g root -m 644 manual/apmd/man1/xapm.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_findutils: xargs.1 .. 
install -o root -g root -m 644 manual/GNU_findutils/man1/xargs.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: xcrypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xcrypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdecrypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdecrypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install uudeview: xdeview.1 .. 
install -o root -g root -m 644 manual/uudeview/man1/xdeview.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: xdr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_accepted_reply.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_accepted_reply.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_array.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_array.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_authunix_parms.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_authunix_parms.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_bool.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_bool.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_bytes.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_bytes.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_callhdr.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_callhdr.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_callmsg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_callmsg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_char.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_char.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_destroy.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_destroy.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_double.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_double.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_enum.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_enum.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_float.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_float.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_free.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_free.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_getpos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_getpos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_inline.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_inline.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_int.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_int.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_long.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_long.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_opaque.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_opaque.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_opaque_auth.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_opaque_auth.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_pmap.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_pmap.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_pmaplist.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_pmaplist.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_pointer.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_pointer.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_reference.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_reference.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_rejected_reply.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_rejected_reply.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_replymsg.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_replymsg.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_setpos.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_setpos.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_short.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_short.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_string.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_string.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_u_char.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_u_char.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_u_int.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_u_int.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_u_long.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_u_long.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_u_short.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_u_short.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_union.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_union.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_vector.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_vector.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_void.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_void.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdr_wrapstring.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdr_wrapstring.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdrmem_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdrmem_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdrrec_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdrrec_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdrrec_endofrecord.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdrrec_endofrecord.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdrrec_eof.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdrrec_eof.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdrrec_skiprecord.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdrrec_skiprecord.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xdrstdio_create.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xdrstdio_create.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xencrypt.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xencrypt.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install wu-ftpd: xferlog.5 .. 
install -o root -g root -m 644 manual/wu-ftpd/man5/xferlog.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install xinetd: xinetd.conf.5 .. 
install -o root -g root -m 644 manual/xinetd/man5/xinetd.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install xinetd: xinetd.log.5 .. 
install -o root -g root -m 644 manual/xinetd/man5/xinetd.log.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install xinetd: xinetd.8 .. 
install -o root -g root -m 644 manual/xinetd/man8/xinetd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install LDP_man-pages: xprt_register.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xprt_register.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: xprt_unregister.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/xprt_unregister.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: y0.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/y0.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: y0f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/y0f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: y0l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/y0l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: y1.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/y1.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: y1f.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/y1f.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: y1l.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/y1l.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install byacc: yacc.1 .. 
install -o root -g root -m 644 manual/byacc/man1/yacc.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_coreutils: yes.1 .. 
install -o root -g root -m 644 manual/GNU_coreutils/man1/yes.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: yn.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/yn.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ynf.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ynf.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install LDP_man-pages: ynl.3 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man3/ynl.3 $P/usr/share/man/ja_JP.UTF-8/man3
echo done.

echo -n install ypbind-mt: yp.conf.5 .. 
install -o root -g root -m 644 manual/ypbind-mt/man5/yp.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install ypbind-mt: ypbind.8 .. 
install -o root -g root -m 644 manual/ypbind-mt/man8/ypbind.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install yp-tools: ypcat.1 .. 
install -o root -g root -m 644 manual/yp-tools/man1/ypcat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install yp-tools: ypchfn.1 .. 
install -o root -g root -m 644 manual/yp-tools/man1/ypchfn.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install yp-tools: ypchsh.1 .. 
install -o root -g root -m 644 manual/yp-tools/man1/ypchsh.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install net-tools: ypdomainname.1 .. 
install -o root -g root -m 644 manual/net-tools/man1/ypdomainname.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install yp-tools: ypdomainname.8 .. 
install -o root -g root -m 644 manual/yp-tools/man8/ypdomainname.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: yphelper.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/yphelper.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: ypinit.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/ypinit.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install yp-tools: ypmatch.1 .. 
install -o root -g root -m 644 manual/yp-tools/man1/ypmatch.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install yp-tools: yppasswd.1 .. 
install -o root -g root -m 644 manual/yp-tools/man1/yppasswd.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ypserv: yppasswdd.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/yppasswdd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install yp-tools: yppoll.8 .. 
install -o root -g root -m 644 manual/yp-tools/man8/yppoll.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: yppush.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/yppush.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: ypserv.conf.5 .. 
install -o root -g root -m 644 manual/ypserv/man5/ypserv.conf.5 $P/usr/share/man/ja_JP.UTF-8/man5
echo done.

echo -n install ypserv: ypserv.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/ypserv.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install yp-tools: ypset.8 .. 
install -o root -g root -m 644 manual/yp-tools/man8/ypset.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install yp-tools: yptest.8 .. 
install -o root -g root -m 644 manual/yp-tools/man8/yptest.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install yp-tools: ypwhich.1 .. 
install -o root -g root -m 644 manual/yp-tools/man1/ypwhich.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install ypserv: ypxfr.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/ypxfr.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install ypserv: ypxfrd.8 .. 
install -o root -g root -m 644 manual/ypserv/man8/ypxfrd.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_gzip: zcat.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zcat.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: zcmp.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zcmp.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: zdiff.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zdiff.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: zdump.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/zdump.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install zebedee: zebedee.1 .. 
install -o root -g root -m 644 manual/zebedee/man1/zebedee.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: zero.4 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man4/zero.4 $P/usr/share/man/ja_JP.UTF-8/man4
echo done.

echo -n install GNU_gzip: zforce.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zforce.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: zgrep.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zgrep.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install LDP_man-pages: zic.8 .. 
install -o root -g root -m 644 manual/LDP_man-pages/man8/zic.8 $P/usr/share/man/ja_JP.UTF-8/man8
echo done.

echo -n install GNU_gzip: zless.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zless.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: zmore.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/zmore.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

echo -n install GNU_gzip: znew.1 .. 
install -o root -g root -m 644 manual/GNU_gzip/man1/znew.1 $P/usr/share/man/ja_JP.UTF-8/man1
echo done.

