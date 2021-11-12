#! /bin/zsh
BITRATE=2500000
CRF=23
LOGFILE=~/dvbt.log
MPEGTSSTRING='udp://225.0.0.1:11111?pkt_size=1316&bitrate='+$BITRATE
#MPEGTSSTRING='udp://225.0.0.1:11111?bitrate='+$BITRATE


log(){
   message="$(date +"%y-%m-%d %T") $@"
   echo $message
   echo $message >>$LOGFILE
}

for (( ; ; ))
do
log " restart "
 FFREPORT=file=$LOGFILE:level=16 \
 /usr/local/bin/ffmpeg -loglevel error \
 -format_code pal \
 -f decklink \
 -video_input composite \
 -audio_input analog_rca \
 -i "Intensity Pro" \
 -s 720x576 \
 -aspect 16:9 \
 -c:v libx264 \
 -tune zerolatency \
 -pix_fmt yuv420p \
 -x264opts nal-hrd=cbr:force-cfr=1 \
 -b:v $BITRATE \
 -minrate $BITRATE \
 -maxrate $BITRATE \
 -bufsize 1000k \
 -preset veryslow \
 -crf $CRF \
 -r 25 \
 -g 50 \
 -profile:v main \
 -level 3.0 \
 -acodec mp2)\
 -ac 2\
 -b:a 192k \
 -ar 48000 \
 -ignore_unknown \
 -mpegts_pmt_start_pid 0x1000 \
 -mpegts_start_pid 0x100 \
 -streamid 0:0x100 \
 -streamid 1:0x101 \
 -muxrate $BITRATE \
 -f mpegts $MPEGTSSTRING\
 >>$LOGFILE 

done
