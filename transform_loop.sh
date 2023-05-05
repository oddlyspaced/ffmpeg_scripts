# inputs a list of files and then rotates them by 90 degrees
#!/bin/bash
for f in "$@";
do
	echo $f
	ffmpeg -y -i $f -vf "transpose=1" "$f.rotated.mp4"
done
