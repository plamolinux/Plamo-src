#!/bin/bash
#
# Mozc辞書用 最新郵便番号辞書作成スクリプト
# 2024-09-16 : Version 1.0 (JW Shin-ichi Abe)
#
# コアになる変換スクリプトは "epsilon phoenix"さん作成によるものです。
# URL: https://zenn.dev/phoepsilonix/articles/japanese-zip-code-dictionary
# LICENSE: https://github.com/phoepsilonix/japanese-zip-code-dictionary/blob/main/LICENSE
# 
# 郵便番号辞書をMozcのユーザー辞書に追加する方法：
# Step-1) Mozcの辞書ツールを開く
# Step-2) 管理 > 新規辞書にインポート or 選択した辞書にインポート から
#         生成された zipcode-dic_yyyy-mm-dd.txt を読み込む。 

dt=`date +%Y-%m-%d`
TMP=/tmp
CWD=$(pwd)
OUTPUT_PATH=$TMP
TOOL_PATH=/usr/lib/mozc/tools

cd $CWD

# Download the latest zipcode from post.japanpost.jp
wget https://www.post.japanpost.jp/zipcode/dl/jigyosyo/zip/jigyosyo.zip
# Download the latest zipcode from post.japanpost.jp
wget https://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip

# unzip zipcode data
unzip jigyosyo.zip
unzip ken_all.zip

# prepare original data 
uconv -x '::[ [:^Katakana:] & [:^Hiragana:] & [:^Han:] & [^ー・「」、，（）]]  Fullwidth-Halfwidth; ::[\p{Nl}] Latin-ASCII;' -f cp932 -t UTF-8 KEN_ALL.CSV > KEN_ALL_UTF8.CSV
uconv -x '::[ [:^Katakana:] & [:^Hiragana:] & [:^Han:] & [^ー・「」、，（）]]  Fullwidth-Halfwidth; ::[\p{Nl}] Latin-ASCII;' -f cp932 -t UTF-8 JIGYOSYO.CSV > JIGYOSYO_UTF8.CSV

# Convert zipcode data for Mozc
awk -f ${TOOL_PATH}/ken_all-convert-mozc-dictionary.awk KEN_ALL_UTF8.CSV > ${TMP}/zipcode-dic_${dt}.txt
awk -f ${TOOL_PATH}/jigyosyo-convert-mozc-dictionary.awk JIGYOSYO_UTF8.CSV >> ${TMP}/zipcode-dic_${dt}.txt

# Clean working directory
rm jigyosyo.zip ken_all.zip
rm JIGYOSYO.CSV JIGYOSYO_UTF8.CSV KEN_ALL.CSV KEN_ALL_UTF8.CSV

echo "Done."
echo "${OUTPUT_PATH}/zipcode-dic_${dt}.txt を生成しました."
echo ""辞書ツール"を使って任意のユーザー辞書にデータをインポートできます。"


