#!/bin/bash

# Start motion
/etc/motion/./motion

service motion start

# Check if service is running
service motion status

# Let's monitor motion.log to keep this script and container running
tail -F /tmp/motion.log
