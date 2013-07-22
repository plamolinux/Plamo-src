#!/bin/sh

# CD image 作成ツール
# 1st version 2005/01 ごろ
# modified for Plamo-4.03
# Time-stamp: <2008-08-16 12:40:02 kojima>

# target=$1
target=`echo $1 | sed "s|/$||"`
ver=`echo $target | sed "s/Plamo-//"`
dt=`date +%y%m%d`
echo $dt
#
# make plamo DVD image
#
mkisofs -v -J -r -b boot/stage2_eltorito -c boot/boot.cat \
	-no-emul-boot -boot-load-size 4 -boot-info-table \
	-V $target-"$dt" -o plamo-$ver-"$dt"_01.dvd \
	-m contrib -m old -m boot.old -m plamo.org $target
