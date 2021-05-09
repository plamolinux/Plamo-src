#!/bin/sh   
# -*- coding: utf-8 -*-

# CD image 作成ツール
# revised version 2016/07
# mkisofs ではなく，xorrisofs を使うように修正
# Time-stamp: <2020-11-17 13:28:14 kojima>

arch=$1
ver=plamo-7.3
dt=`date +%Y-%m-%d`
tm=`date +%H:%M`
echo "$ver: created at $dt $tm" > Plamo-7.x/$arch/$ver

for i in `find Plamo-7.x/x86_64/plamo -type d | grep -v old | sed 1d` ; do
    ./makedesc.py $i
    if [ $? -ne 0 ] ; then
	echo "error at makedesc.py. exits"
	exit
    fi
done

#xorrisofs -vv -o ${ver}_${arch}_dvd_01.iso \
xorrisofs -vv -o ${ver}_${arch}_${dt}_dvd_01.iso \
  -exclude-list plamo7-exclude-list \
  -isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
  -c isolinux/boot.cat -b isolinux/isolinux.bin \
  -no-emul-boot -boot-load-size 4 -boot-info-table \
  -eltorito-alt-boot -e efiboot.img -no-emul-boot -isohybrid-gpt-basdat \
  Plamo-7.x/${arch}

#  -eltorito-alt-boot -no-emul-boot -e efiboot.img -isohybrid-gpt-basdat \
#  -no-emul-boot \
#  -append_partition 2 0xef ./Plamo-7.x/${arch}/efiboot.img \

echo "md5summing.."
md5sum ${ver}_${arch}_${dt}_dvd_01.iso > ${ver}_${arch}_${dt}_dvd_01.iso.md5sum
#md5sum ${ver}_${arch}_dvd_01.iso > ${ver}_${arch}_dvd_01.iso.md5sum

#xorrisofs -vv -o ${ver}_${arch}_dvd_02.iso \
xorrisofs -vv -o ${ver}_${arch}_${dt}_dvd_02.iso \
  -exclude-list plamo7-exclude-list2 \
  Plamo-7.x/${arch}

echo "md5summing.."
md5sum ${ver}_${arch}_${dt}_dvd_02.iso > ${ver}_${arch}_${dt}_dvd_02.iso.md5sum
#md5sum ${ver}_${arch}_dvd_02.iso > ${ver}_${arch}_dvd_02.iso.md5sum

# for all in one USB memory
#xorrisofs -vv -o ${ver}_${arch}_usb.iso \
xorrisofs -vv -o ${ver}_${arch}_${dt}_usb.iso \
  -exclude-list plamo7-exclude-list-usb \
  -isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
  -c isolinux/boot.cat -b isolinux/isolinux.bin \
  -no-emul-boot -boot-load-size 4 -boot-info-table \
  -eltorito-alt-boot -e efiboot.img -no-emul-boot -isohybrid-gpt-basdat \
  Plamo-7.x/${arch}

echo "md5summing.."
md5sum ${ver}_${arch}_${dt}_usb.iso > ${ver}_${arch}_${dt}_usb.iso.md5sum
#md5sum ${ver}_${arch}_usb.iso > ${ver}_${arch}_usb.iso.md5sum


