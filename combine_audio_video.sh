# accepts 3 arguments, input video, input audio and output video and combines the audio and video file
#!/bin/bash
ffmpeg -i $1 -i $2 -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 $3
