# reference script for merging images and video
#!/bin/bash
# ffmpeg -i temp/temp.mp4 -i output_images/output_0.png -i output_images/output_1.png -i output_images/output_2.png -i output_images/output_3.png -i output_images/output_4.png -i output_images/output_5.png -i output_images/output_6.png -i output_images/output_7.png -filter_complex "[0][1] overlay=135:257:enable='between(t,0,6.142404)'[v1];[v1][2] overlay=135:257:enable='between(t,6.142404,26.195736999999998)'[v2];[v2][3] overlay=135:257:enable='between(t,26.195736999999998,27.7522)'[v3];[v3][4] overlay=135:257:enable='between(t,27.7522,34.429387999999996)'[v4];[v4][5] overlay=135:257:enable='between(t,34.429387999999996,36.34576)'[v5];[v5][6] overlay=135:257:enable='between(t,36.34576,53.20635)'[v6];[v6][7] overlay=135:257:enable='between(t,53.20635,55.540681)'[v7];[v7][8] overlay=135:257:enable='gt(t,55.540681)'[v8]" -map "[v8]" temp/image_final_output.mp4

