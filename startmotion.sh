#!/bin/sh
nohup /home/pi/mmal/motion -n -c /home/pi/mmal/motion-mmalcam.conf 1>/dev/null 2>&1 </dev/null &
