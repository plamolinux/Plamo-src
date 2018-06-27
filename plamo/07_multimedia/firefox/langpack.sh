#!/bin/sh
langpack="ja.xpi"
W=$1

cd $W
mkdir langpack
if [ -f $langpack ]; then
    mv -v $langpack "$langpack".orig
fi
if [ -f "$langpack".plamo ]; then
    rm -fv "$langpack".plamo
fi
unzip "$langpack".orig -d langpack
find langpack -type f | xargs chmod 644

sed -i \
    -e "s|Mozilla Firefox|Plamo Browser|g" \
    -e "s|Firefox|Plamo Browser|g" \
    -e "s|Mozilla|Plamo Linux Project|g" \
    -e 's|\(.*trademarkInfo.part1.*"\).*">|\1Plamo Linux Project">|g' \
    langpack/browser/chrome/ja/locale/branding/brand.*

cd $W/langpack
zip -r9mX ../$langpack.plamo *

rm -rf $W/langpack
