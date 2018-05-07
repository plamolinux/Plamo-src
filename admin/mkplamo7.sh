#!/bin/sh

# CD image 作成ツール
# 1st version 2005/01 ごろ
# modified for Plamo-4.5
# Time-stamp: <2008-08-16 10:57:47 kojima>

target=`echo $1 | sed -e "s|/$||" -e "s|/ $||"`
ver=`echo $target | sed "s/Plamo-//"`
dt=`date +%y%m%d`
echo $dt
#
# make CD1 with 00_base, 01_minimum, 02_x11 for grub
#
mkisofs -v -J -r -b boot/stage2_eltorito -c boot/boot.cat \
	-no-emul-boot -boot-load-size 4 -boot-info-table \
	-V $target-"$dt"_1 -o plamo-$ver-"$dt"_01_grub.iso \
        -x $target/isolinux     -x $target/boot/installer \
        -x $target/plamo/03_ext -x $target/plamo/04_xfce \
        -x $target/plamo/05_kde -x $target/plamo/06_gnome \
        -x $target/plamo/07_tex -x $target/plamo/08_kernel \
        -x $target/plamo/09_webdb -x $target/plamo/10_gis \
        -x $target/plamo/11_ooo  -x $target/contrib.old -x $target/contrib \
        -m '*~' -m tmp -m old $target


#
# make CD1 with 00_base, 01_minimum, 02_x11 for isolinux
#

mkisofs -v -J -r -b isolinux/isolinux.bin -c isolinux/boot.cat \
	-no-emul-boot -boot-load-size 4 -boot-info-table \
	-V $target-"$dt"_1 -o plamo-$ver-"$dt"_01_isolinux.iso \
        -x $target/boot                                  \
        -x $target/plamo/03_ext -x $target/plamo/04_xfce \
        -x $target/plamo/05_kde -x $target/plamo/06_gnome \
        -x $target/plamo/07_tex -x $target/plamo/08_kernel \
        -x $target/plamo/09_webdb -x $target/plamo/10_gis \
        -x $target/plamo/11_ooo -x $target/contrib.old -x $target/contrib \
        -m '*~' -m tmp -m old $target

# make CD2 with 03_ext, 04_xfce, 07_tex, 08_kernel
#
mkisofs -v -J -r -V $target-"$dt"_2 -o plamo-$ver-"$dt"_02.iso \
	-m $target/'README*' -x $target/Change.Log -x $target/boot -x $target/isolinux \
        -x $target/plamo/00_base -x $target/plamo/01_minimum -x $target/plamo/02_x11 \
        -x $target/plamo/05_kde -x $target/plamo/06_gnome \
        -x $target/plamo/09_webdb -x $target/plamo/10_gis \
        -x $target/plamo/11_ooo -x $target/contrib.old -x $target/contrib \
        -m '*~' -m tmp -m old $target


#
# make CD3 with 05_kde
#
mkisofs -v -J -r -V $target-"$dt"_3 -o plamo-$ver-"$dt"_03.iso \
	-m $target/'README*' -x $target/Change.Log -x $target/boot -x $target/isolinux \
        -x $target/plamo/00_base -x $target/plamo/01_minimum -x $target/plamo/02_x11 \
        -x $target/plamo/03_ext  -x $target/plamo/04_xfce \
                                 -x $target/plamo/06_gnome \
        -x $target/plamo/07_tex  -x $target/plamo/08_kernel \
        -x $target/plamo/09_webdb -x $target/plamo/10_gis \
        -x $target/plamo/11_ooo -x $target/contrib.old -x $target/contrib \
        -m '*~' -m tmp -m old $target

#
# make CD4 with 06_gnome, 07_tex, 09_webdb, 10_gis, 11_ooo
#
mkisofs -v -J -r -V $target-"$dt"_4 -o plamo-$ver-"$dt"_04.iso \
	-m $target/'README*' -x $target/Change.Log -x $target/boot -x $target/isolinux \
        -x $target/plamo/00_base  -x $target/plamo/01_minimum -x $target/plamo/02_x11 \
        -x $target/plamo/03_ext   -x $target/plamo/04_xfce \
        -x $target/plamo/05_kde                            \
        -x $target/plamo/07_tex   -x $target/plamo/08_kernel \
        -x $target/contrib.old    -x $target/contrib \
        -m '*~' -m tmp -m old $target
