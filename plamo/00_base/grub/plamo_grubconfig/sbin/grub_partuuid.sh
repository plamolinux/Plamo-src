#!/bin/bash

if [ -d /boot/efi ]; then
    GRUB_CFG=/boot/efi/grub/grub.cfg
else
    GRUB_CFG=/boot/grub/grub.cfg
fi

if [ ! -f $GRUB_CFG ]; then
    echo "Cannot read $GRUB_CFG"
    echo "Where has your grub.cfg file gone?"
    exit
fi

if [ -f /tmp/grub_root ]; then
    rm -f /tmp/grub_root
fi

for i in `grep "root=/dev" $GRUB_CFG` ; do
    echo $i | grep "^root=" >> /tmp/grub_root
done

# 変換対象が存在する場合のみ処理する
if [ -f /tmp/grub_root ] ; then

    if [ -f /tmp/grub_conv.sed ]; then
        rm -f /tmp/grub_conv.sed
    fi

    root_devs=`cat /tmp/grub_root | sed "s/root=//" | sort | uniq`
    for i in ${root_devs} ; do
        for j in `/sbin/blkid $i`; do
	    part_uuid=`echo $j | grep "^PARTUUID"`
        done
        echo "s|root=$i|root=$part_uuid|" >> /tmp/grub_conv.sed
    done

    mv $GRUB_CFG ${GRUB_CFG}.org
    cat ${GRUB_CFG}.org | sed -f /tmp/grub_conv.sed > $GRUB_CFG

fi

