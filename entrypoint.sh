#!/bin/bash

# Start motion
/home/pi/mmal/./startmotion.sh

# Let's monitor motion.log to keep this script and container running
tail -F /home/pi/mmal/motion.log
