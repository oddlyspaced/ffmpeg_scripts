# inputs a file and creates 90 second long chunks of it at every 5 minute interval
#!/bin/bash
for i in {01..60..5};
do
	start="00:$i:00"
	ffmpeg -y -i $1 -ss $start -t 00:01:30 -c:v copy -c:a copy "$1_trimmed_$i.mp4"
done
