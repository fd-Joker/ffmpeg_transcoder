#!/bin/bash

#video=Xia_30m.mp4
video=big.mp4
#video=Young_5m.mp4
#video=wild_12000k.mp4

make

#time -p ./transcoder -i $video -c:v libx264 -b:v 8000k -s 1920x1080 -c:a libfaac 101.mp4 -c:v libx264 -b:v 4000k -s 1920x1080 -c:a libfaac 102.mp4 -c:v libx264   -b:v 2300k -s 1280x720 -c:a libfaac 103.mp4 -threads 40 -fc 0  
#ffprobe 101.mp4 && ffprobe 102.mp4 && ffprobe 103.mp4
time -p ./transcoder -i $video -c:v libx264 -b:v 1300k -s 1280x720 -c:a libfaac 501.mp4 -c:v libx264 -b:v 800k -s 640x360 -c:a libfaac 502.mp4 -c:v  libx264 -b:v 600k -s 640x360 -c:a libfaac 503.mp4 -threads 40 -fc 0 
ffprobe 501.mp4 && ffprobe 502.mp4 && ffprobe 503.mp4

#time -p ./transcoder -i $video -c:v libx264 -b:v 4000k -s 1920x1080  -c:a libfaac 201.mp4 -c:v libx264 -b:v 2300k -s 1280x720 -c:a libfaac 202.mp4 -c:v libx264   -b:v 1300k -s 1280x720 -c:a libfaac 203.mp4 -threads 40 -fc 0


#time -p ./transcoder -i $video -c:v libx264 -b:v 8000k -s 1920x1080 -c:a libfaac 301.mp4 -c:v libx264 -b:v 4000k -s 1920x1080 -c:a libfaac 302.mp4 -c:v libx264  -b:v 2300k -s 1280x720 -c:a libfaac 303.mp4 -c:v libx264 -b:v 1300k -s 1280x720 -c:a libfaac 304.mp4 -threads 40 -fc 0  

#time -p ./transcoder -i $video -c:v libx264 -b:v 4000k -s 1920x1080 -c:a libfaac 401.mp4 -c:v libx264 -b:v 2300k -s 1280x720 -c:a libfaac 402.mp4   -c:v libx264 -b:v 1400k -s 1280x720 -c:a libfaac 403.mp4 -c:v libx264 -b:v 800k -s 640x360 -c:a libfaac 404.mp4 -threads 40 -fc 0 




#:<<!
#for i in $(seq 1 5)
#do 
#    echo "i = " $i
#    time -p ./transcoder -i $video -c:v libx264 -b:v 8000k -s 1920x1080 -c:a libfaac 101.mp4 -c:v libx264 -b:v 4000k -s 1920x1080 -c:a libfaac 102.mp4 -c:v libx264   -b:v 2300k -s 1280x720 -c:a libfaac 103.mp4 -threads 40 -fc 0  
#done
#!
