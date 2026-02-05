# FFmpeg チートシート
（出典：https://gist.github.com/euske/4d311ec34522ed766aaaf1a75530df6a ）

コマンドラインツール ffmpeg の有用なコマンド:

FFmpeg ダウンロード: https://www.ffmpeg.org/download.html

文書: https://www.ffmpeg.org/ffmpeg.html

## 変換の基本形

````
ffmpeg -i in.mp4 out.avi
````

### MKV ファイルを MP4 にする

````
ffmpeg -i in.mkv -c:v copy -c:a copy out.mp4
````

### 高品質でエンコーディング

動画の出力品質を調整するには `crf` (Constant Rate Factor, レート固定係数) を使う。
crf が低いほど品質は上がる (範囲は 0～51)。
デフォルト値は 23。
ほとんど見た目の品質劣化がない圧縮は `-crf 18` を使う。圧縮処理の速度を調整するには `preset` パラメータを使うこと。 
参考: https://trac.ffmpeg.org/wiki/Encode/H.264

````
ffmpeg -i in.mp4 -preset slower -crf 18 out.mp4
````

## (時間で) トリミング

再エンコードなしでトリミングするには:
````
ffmpeg -ss [start] -i in.mp4 -t [duration] -c copy out.mp4
````
- [`-ss`](http://ffmpeg.org/ffmpeg-all.html#Main-options) 開始時間。例: `00:01:23.000` or `83` (秒で指定)
- [`-t`](http://ffmpeg.org/ffmpeg-all.html#Main-options) クリップの再生時間 (上と同じ書式)。
- 最近の `ffmpeg` では終了時間を `-to` で指定できるようになった。
- [`-c`](http://ffmpeg.org/ffmpeg-all.html#Main-options) copy は１番目に指定された映像・音声および字幕ストリームを
再エンコードせず入力から出力にコピーする。これは品質の低下がなく、コマンドの実行は数秒で終了する。

再エンコードありの場合:

`-c copy` オプションをつけない場合、`ffmpeg` は自動的に指定された形式で再エンコーディングをおこなう。
高品質の映像・音声を得るには [x264 エンコーディングガイド](https://ffmpeg.org/trac/ffmpeg/wiki/x264EncodingGuide) 
および [AAC エンコーディングガイド](http://ffmpeg.org/trac/ffmpeg/wiki/AACEncodingGuide) を参照のこと。

例:
````
ffmpeg -ss [start] -i in.mp4 -t [duration] -c:v libx264 -c:a aac -strict experimental -b:a 128k out.mp4
````

## 別ファイルの音声を画像に合わせる

映像を in0.mp4 から、音声を in1.mp4 から取り込むには:
````
ffmpeg -i in0.mp4 -i in1.mp4 -c copy -map 0:0 -map 1:1 -shortest out.mp4
````
- [-c copy](http://ffmpeg.org/ffmpeg.html#Stream-copy) オプションをつけるとストリームは再エンコードされずコピーされるため、
品質の低下はない。
再エンコードが必要な場合は [FFmpeg Wiki: H.264 エンコーディングガイド](https://trac.ffmpeg.org/wiki/Encode/H.264) を参照。
- `-shortest` オプションは、入力動画の短いほうの長さに出力動画を合わせる。
- より詳しい情報は [`-map` オプションの説明](http://ffmpeg.org/ffmpeg.html#Advanced-options) を参照のこと。


## 複数の動画を連結する

まず、以下のようなテキストファイルを作成する:
````
file 'in1.mp4'
file 'in2.mp4'
file 'in3.mp4'
file 'in4.mp4'
````
つぎに `ffmpeg` を実行する:
````
ffmpeg -f concat -i list.txt -c copy out.mp4
````

## 音声・映像を遅らせる

映像を 3.84秒遅らせるには:
````
ffmpeg -i in.mp4 -itsoffset 3.84 -i in.mp4 -map 1:v -map 0:a -vcodec copy -acodec copy out.mp4
````
音声を 3.84秒遅らせるには:
````
ffmpeg -i in.mp4 -itsoffset 3.84 -i in.mp4 -map 0:v -map 1:a -vcodec copy -acodec copy out.mp4
````

## 字幕をつける

[libass](http://ffmpeg.org/ffmpeg.html#ass) ライブラリが必要 
(ffmpegビルド時に `--enable-libass` をつけたものをインストールすること)。

まず、字幕を .ass 形式に変換:
````
ffmpeg -i sub.srt sub.ass
````
つぎに、映像フィルタを使ってこれを追加する:

````
ffmpeg -i in.mp4 -vf ass=sub.ass out.mp4
````

## 映像から特定のフレームだけを抜き出す

1秒～5秒と、11秒～15秒の全フレームを抜き出すには:

````
ffmpeg -i in.mp4 -vf select='between(t,1,5)+between(t,11,15)' -vsync 0 out%d.png
````

1秒ごとに１フレームだけを抜き出すには:

````
ffmpeg -i in.mp4 -fps=1 -vsync 0 out%d.png
````

## 映像を回転させる

時計回りに90°回転:

````
ffmpeg -i in.mov -vf "transpose=1" out.mov
````

`transpose` に与えるパラメータは以下のとおり:

````
0 = 反時計回りに90°回転＋上下反転 (デフォルト)
1 = 時計回りに90°回転
2 = 反時計回りに90°回転
3 = 時計回りに90°回転＋上下反転
````

180度回転させるには `-vf "transpose=2,transpose=2"` を使う。

## "トランスポート・ストリーム (TS) 形式" の動画をダウンロードするには

1. プレイリストファイルを取得する。例: Chrome なら、F12 > Network > Filter: m3u8
2. ダウンロードして連結する:

````
ffmpeg -i "path_to_playlist.m3u8" -c copy -bsf:a aac_adtstoasc out.mp4
````

"Protocol 'https not on whitelist 'file,crypto'!" エラーが出る場合は、 `protocol_whitelist` オプションを追加する:

````
ffmpeg -protocol_whitelist "file,http,https,tcp,tls" -i "path_to_playlist.m3u8" -c copy -bsf:a aac_adtstoasc out.mp4
````

## 音声の一部をミュートする

最初の90秒間の音声を消すには:

````
ffmpeg -i in.mp4 -vcodec copy -af "volume=enable='lte(t,90)':volume=0" out.mp4
````

1'20" ～ 1'30" の音声を消すには:

````
ffmpeg -i in.mp4 -vcodec copy -af "volume=enable='between(t,80,90)':volume=0" out.mp4
````

## デインタレース

デインタレースには "yet another deinterlacing filter" (yadif) フィルタを使う:

````
ffmpeg -i in.mp4 -vf yadif out.mp4
````

## 画像からスライドショー動画を作成する

`-r` オプションは１秒あたりのフレーム数を指定する (つまり、各画像を表示したい時間の逆数)。
また `-vf fps=25` は生成される動画の実際の fps を指定する。

````
ffmpeg -r 1/5 -i img%03d.png -c:v libx264 -vf fps=25 -pix_fmt yuv420p out.mp4
````

## 映像から静止画を抜き出す

- 全フレームを抜き出す: `ffmpeg -i input.mp4 thumb%04d.jpg -hide_banner`
- 1秒ごとに1フレームだけ抜き出す: `ffmpeg -i input.mp4 -vf fps=1 thumb%04d.jpg -hide_banner`
- 特定の1フレームだけを抜き出す: `ffmpeg -i input.mp4 -ss 00:00:10.000 -vframes 1 thumb.jpg`

## メタデータに含まれる題名を変更する

````
ffmpeg -i in.mp4 -map_metadata -1 -metadata title="My Title" -c:v copy -c:a copy out.mp4
````
