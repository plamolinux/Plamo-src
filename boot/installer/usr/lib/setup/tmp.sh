#!/bin/sh
# SeTpartition user-friendly rewrite Fri Dec 15 13:17:40 CST 1995 pjv
crunch () { # remove extra whitespace
 read STRING;
 echo $STRING
}
T_PX=/mnt
if [ ! -r /tmp/SeTplist ]; then
 # Give warning?
  exit
fi
  dialog --title "ハードディスクのスキャン中" --infobox \
"Plamo セットアップはLinuxパーティションを探すために \n\
ハードディスクをスキャン中です。少々お待ちください。" 6 60

