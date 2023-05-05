# takes input and output filename and scales the input video to 1080p
#!/bin/bash
ffmpeg -i $1 -vf scale=-1:1080:flags=lanczos -c:v libx264 $2 
