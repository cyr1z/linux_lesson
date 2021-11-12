#! /bin/bash
#
# Diffusion youtube avec ffmpeg

# Configurer youtube avec une résolution 720p. La vidéo n'est pas scalée.

VBR="2500k"                                    # Bitrate de la vidéo en sortie
FPS="30"                                       # FPS de la vidéo en sortie
QUAL="medium"                                  # Preset de qualité FFMPEG
YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"  # URL de base RTMP youtube

SOURCE="udp://239.255.139.0:1234"              # Source UDP (voir les annonces SAP)
KEY="...."                                     # Clé à récupérer sur l'event youtube

ffmpeg \
    -i "$SOURCE" -deinterlace \
    -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 44100 -threads 6 -qscale 3 -b:a 712000 -bufsize 512k \
    -f flv "$YOUTUBE_URL/$KEY"

# ffmpeg -i "rtsp://YOUR_RTSP_IP" -vcodec copy -acodec copy -f flv rtmp://a.rtmp.youtube.com/live2/YOUR STREAM KEY
# ffmpeg -re -f mjpeg -framerate 5 -i "<use your input, i have mjpeg source>" -ar 44100 -ac 2 -acodec pcm_s16le -f s16le -ac 2 -i /dev/zero -acodec aac -ab 128k -strict experimental -s 640x480 -vcodec h264 -pix_fmt yuv420p -g 10 -vb 700k -preset ultrafast -crf 31 -framerate 5 -f flv "rtmp://a.rtmp.youtube.com/live2/<add streaming key here>"