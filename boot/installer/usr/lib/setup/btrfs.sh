#!/bin/sh

BTRFS_DEVICE="`cat /tmp/btrfs_device`"
BTRFS_MOUNT_POINT="`cat /tmp/btrfs_mount_point`"

#BTRFS_DEVICE="/dev/sdb2"
#BTRFS_MOUNT_POINT="/"

# btrfsのsubvolumeはマウントしてから作るので、一度 /tmp/btrfs_tmp に仮
# マウントしておく

mkdir -p /tmp/btrfs_tmp
mount -t btrfs $BTRFS_DEVICE /tmp/btrfs_tmp

# 既存のsubvolumeを探す。一応、/ 直下のsubvolumeのみを表示するように
# しているつもり

btrfs subvolume list /tmp/btrfs_tmp  | cut -f7 -d' ' | cut -f1 -d'/' |sort | uniq > /tmp/volume_list
if [ ! -s /tmp/volume_list ]; then
    echo "(None)" > /tmp/volume_list
fi

# root用subvolume入力用dialog(/tmp/BtrfsCreateSubvolume.sh)作成処理。
# BtrfsCreateSubvolume.shはroot_subvolume_nameが入力されるまでループする

echo > /tmp/root_subvolume_name
cat <<'EOF' > /tmp/BtrfsCreateSubvolume.sh
#!/bin/sh
root_subvolume_name=`cat /tmp/root_subvolume_name | sed "s|^/||"`
while [ "$root_subvolume_name.x" = ".x" ]; do
    dialog --title "rootfs用のsubvolumeを作成" --inputbox \
"Btrfsはファイルシステム内に複数のsubvolumeを作り，それぞれの \n\
subvolumeを独立したパーティションのように扱って，\n\
異なる環境をインストールインストールすることが可能です．\n\
現在、以下のsubvolumeが設定されています． \n\n\
EOF
cat /tmp/volume_list >> /tmp/BtrfsCreateSubvolume.sh
cat <<'EOF' >> /tmp/BtrfsCreateSubvolume.sh
\n\n\
既存のsubvolume上にインストールするとエラーになる可能性があるので， \n\
今回システムをインストールするsubvolumeの名称は、上記と異なる名称を \n\
指定してください。 \n\
(不要なsubvolumeは再起動後 btrfs subvol del コマンドで削除できます) \n\n\
subvolumeの名称は？" 22 74 2> /tmp/root_subvolume_name
    root_subvolume_name=`cat /tmp/root_subvolume_name | sed "s|^/||"`
done
EOF
chmod +x /tmp/BtrfsCreateSubvolume.sh
/tmp/BtrfsCreateSubvolume.sh
if [ $? = 255 -o $? = 1 ]; then 
        # どこへ処理を返すか要検討
    exit 1
fi
# 仮マウントしているbtrfsパーティションに新しいroot用のsubvolumeを作る
root_subvolume_name=`cat /tmp/root_subvolume_name | sed "s|^/||"`
echo "btrfs subvolume create /tmp/btrfs_tmp/$root_subvolume_name"
btrfs subvolume create /tmp/btrfs_tmp/$root_subvolume_name
umount /tmp/btrfs_tmp
echo "mount -t btrfs $BTRFS_DEVICE /tmp/btrfs_tmp -o subvol=$root_subvolume_name"
mount -t btrfs $BTRFS_DEVICE /tmp/btrfs_tmp -o subvol=$root_subvolume_name
sleep 5

dialog --yesno \
"btrfsではsubvolume内に任意のsubvolumeを作ることができます． \n\
subvolumeはファイルシステム上ではディレクトリのように見えますが，\n\
btrfsのCOW機能を使って，簡単にsnapshotを作ることが可能です．\n\
(例えば /home をsubvolumeにしておけば，一般ユーザのデータのバックアップ \n\
がコマンド一つで可能になります) \n\n\
Plamo Linuxでは，btrfsのパーティション内に / 用のsubvolumeを \n\
作ってインストールするようにしており、その内部には新たにsubvolumeを作って \n\
ディレクトリごとにsubvolumeを分けることが可能です． \n\n\
$BTRFS_DEVICE上に新しいsubvolumeを作りますか？" 18 76
if [ $? = 0 ]; then
    SUBVOLUME=1
else
    SUBVOLUME=0
fi

if [ "$SUBVOLUME" = "0" ]; then
   umount /tmp/btrfs_tmp
   exit
fi

# $subvolume_listを内部に含むスクリプト(BtrfsSubVolume.sh)を
# 生成する．返されるのは /tmp/subvolume に記載されたsubvolumeの
# マウント先ディレクトリ

echo > /tmp/subvolume
subvolume=`cat /tmp/subvolume`
while [ "$subvolume.x" = ".x" ]; do
    dialog --title "Btrfsにsubvolumeを追加" --inputbox \
"Btrfsはファイルシステム内に複数のsubvolumeを作り， \n\
それぞれのsubvolumeをディレクトリのように扱うことが可能です． \n\
(/varや/opt/htdocsをsubvolumeにしておけば， \n\
それぞれのディレクトリごとにsnapshotを取ることが可能になります) \n\n\
どのようなsubvolumeを作りますか？" 15 74 2> /tmp/subvolume
if [ $? = 255 -o $? = 1 ]; then 
        # どこへ処理を返すか要検討
    exit 1
fi
    subvolume=`cat /tmp/subvolume`
done

echo "subvolume:$subvolume"
# 仮マウントしているbtrfsパーティションに新しいsubvolume($subvolume)を作る
echo "btrfs subvolume create /tmp/btrfs_tmp/$subvolume"
btrfs subvolume create /tmp/btrfs_tmp/$subvolume
sleep 5

# subvolumeのリストを作る
echo "$subvolume\n" > /tmp/subvolume_list

SUBVOLUME=0
dialog --yesno "もう一つbtrfsのsubvolumeを作りますか？" 10 70
if [ $? = 0 ]; then
    SUBVOLUME=1
fi

rm -f /tmp/BtrfsSubVolume.sh
echo > /tmp/subvolume
while [ $SUBVOLUME -eq 1 ]  ; do
    cat <<'__EOF' > /tmp/BtrfsSubVolume.sh
#!/bin/sh
subvolume=`cat /tmp/subvolume`
while [ "$subvolume.x" = ".x" ]; do

    dialog --title "Btrfsにsubvolumeを追加" --inputbox \
"Btrfsはファイルシステム内に複数のsubvolumeを作り， \
それぞれのsubvolumeをディレクトリのように扱うことが可能です． \
現在，このファイルシステムには以下のsubvolumeが設定されています \
\n\n
__EOF
    cat /tmp/subvolume_list >> /tmp/BtrfsSubVolume.sh
    cat <<'__EOF' >> /tmp/BtrfsSubVolume.sh
\n
どのようなsubvolumeを作りますか？" 15 74 2> /tmp/subvolume
subvolume=`cat /tmp/subvolume`
done 
__EOF
    chmod +x /tmp/BtrfsSubVolume.sh
    sh /tmp/BtrfsSubVolume.sh
    if [ $? = 255 -o $? = 1 ]; then 
        # どこへ処理を返すか要検討
	exit 1
    fi
    subvolume=`cat /tmp/subvolume`

# 仮マウントしているbtrfsパーティションに新しいsubvolumeを作る
    echo "subvolume:$subvolume"
    echo "btrfs subvolume create /tmp/btrfs_tmp/$subvolume"
    btrfs subvolume create /tmp/btrfs_tmp/$subvolume
    sleep 5
# subvolumeのリストを作る
    echo "$subvolume\n" >> /tmp/subvolume_list
    SUBVOLUME=0
    echo > /tmp/subvolume
    dialog --yesno "もう一つbtrfsのsubvolumeを作りますか？" 10 70
    if [ $? = 0 ]; then
	SUBVOLUME=1
    fi
done

# 終了時には仮マウントを解除する
# 実際のマウントポイントへは SeTpartitionj でマウントし，
# /etc/fstab の原型(/tmp/SeTnative)を作る

umount /tmp/btrfs_tmp
