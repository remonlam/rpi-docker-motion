# Update
#apt-get update

# Install Motion
apt-get install motion
apt-get install libjpeg62

# Remove old Motion config file (just to be sure)
rm -rf /etc/motion/motion.conf

# Download new Motion config file (note this config uses port 80)
wget -P /etc/motion https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/motion.conf

# Download
wget -P / https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/startmotion.sh

# Make file executable
chmod 755 /startmotion.sh

# Create new directory
mkdir -p /home/pi/mmal

# Download motion-mmal
wget -P /home/pi/mmal https://github.com/remonlam/rpi-docker-motion/raw/master/motion-mmal-opt.tar.gz

# Untar motion-mmal
tar -zxvf /home/pi/mmal/motion-mmal.tar.gz

wget -P /home/pi/mmal https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/motion-mmalcam.conf
