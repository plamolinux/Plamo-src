#!/bin/sh
#
#                           Time-stamp: <2004-03-07 18:47:19 cyamauch>
#                           Time-stamp: <2011-10-08 16:48:55 tamuki>

if [ -z "$1" ] ; then
  echo "Specify Source directory."
  exit 0
fi

SOURCE_DIR=$1
DEFAULT_DIRNAME=Default
DEFAULT_DIR=${SOURCE_DIR%/*}/$DEFAULT_DIRNAME

FSIZE_UI=${2:-12}
FSIZE_TERM=${3:-14}
FSIZE_EDITOR=${4:-16}
FSIZE_UI_SMALL=$((FSIZE_UI - 2))
FSIZE_UI_LARGE=$((FSIZE_UI + 2))

echo "[User Interface    : $FSIZE_UI pixels]"
echo "[Terminal and Text : $FSIZE_TERM pixels]"
echo "[Editor (emacs)    : $FSIZE_EDITOR pixels]"

rm -rf $DEFAULT_DIR
cp -a $SOURCE_DIR $DEFAULT_DIR

LST=`grep -d skip "@FSIZE_" $SOURCE_DIR/.* | cut -d: -f1 | sort -u`
for i in $LST ; do
  cat $i | sed -e "s/@FSIZE_UI@/$FSIZE_UI/g" \
      -e "s/@FSIZE_TERM@/$FSIZE_TERM/g" \
      -e "s/@FSIZE_EDITOR@/$FSIZE_EDITOR/g" \
      -e "s/@FSIZE_UI_SMALL@/$FSIZE_UI_SMALL/g" \
      -e "s/@FSIZE_UI_LARGE@/$FSIZE_UI_LARGE/g" \
      > `echo $i | sed "s/${SOURCE_DIR##*/}/$DEFAULT_DIRNAME/"`
done
