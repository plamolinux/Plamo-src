#!/bin/sh
cd ~/

echo "$ ffmpeg -version" > out.txt
ffmpeg -version |grep -e FFmpeg -e GCC >> out.txt
echo -n -e "\n" >> out.txt
ffmpeg -version |grep -e libavutil -e libavcodec -e libavformat -e libavdevice -e libavfilter -e libswscale -e libswresample -e libpostproc >> out.txt

echo "----------------------------" >> out.txt
echo -n -e "\n" >> out.txt
echo "[encoders] libaom AV1" >> out.txt
ffmpeg -encoders |grep aom >> out.txt
echo "[encoders] MPEG-5" >> out.txt
ffmpeg -encoders |grep MPEG-5 >> out.txt
echo "[encoders] AMD" >> out.txt
ffmpeg -encoders |grep amf >> out.txt
echo "[encoders] NVENC" >> out.txt
ffmpeg -encoders |grep nvenc >> out.txt
echo "[encoders] QSV" >> out.txt
ffmpeg -encoders |grep qsv >> out.txt
echo "[encoders] vulkan" >> out.txt
ffmpeg -encoders -hide_banner |grep vulkan >> out.txt
echo  "----------------------------" >> out.txt
echo -n -e "\n" >> out.txt
echo "[decoders] VVC (Versatile Video Coding)" >> out.txt
ffmpeg -decoders |grep vvc >> out.txt
echo "[decoders] libaom AV1" >> out.txt
ffmpeg -decoders |grep aom >> out.txt
echo "[decoders] MPEG-5" >> out.txt
ffmpeg -decoders |grep MPEG-5 >> out.txt
echo "[decoders] AMD" >> out.txt
ffmpeg -decoders |grep amf >> out.txt
echo "[decoders] CUVID" >> out.txt
ffmpeg -decoders |grep cuvid >> out.txt
echo "[decoders] QSV" >> out.txt
ffmpeg -decoders |grep qsv >> out.txt
echo  "----------------------------" >> out.txt
echo -n -e "\n" >> out.txt
ffmpeg -hwaccels >> out.txt
echo -n -e "\n" >> out.txt
echo `date` >> out.txt

mv out.txt FFmpeg-status.txt && cat FFmpeg-status.txt

