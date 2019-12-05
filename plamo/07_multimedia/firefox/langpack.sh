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

sed -i \
    -e "s|-brand-shorter-name = Firefox|-brand-shorter-name = Plamo Browser|g" \
    -e "s|-brand-short-name = Firefox|-brand-short-name = Plamo Browser|g" \
    -e "s|-brand-full-name = Firefox|-brand-full-name = Plamo Browser|g" \
    langpack/browser/localization/ja/branding/brand.ftl

cd $W/langpack
zip -r9mX ../$langpack.plamo *

rm -rf $W/langpack
