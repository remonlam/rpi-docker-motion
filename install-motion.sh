# Update image
apt-get update

# Install packages
apt-get install -y wget tar nano motion libjpeg62

# Download sources
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libavcodec.so.53
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libavformat.so.53
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libavutil.so.51
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libdirac_encoder.so.0
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libgcrypt.so.11
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libgnutls.so.26
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libopenjpeg.so.2
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/librtmp.so.0
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libtasn1.so.3
wget -P /usr/lib/arm-linux-gnueabihf https://github.com/remonlam/rpi-docker-motion/raw/master/libs/libx264.so.123

# Remove old motion config
rm -rf /etc/motion/motion.conf

# Download motion config file
wget -P /etc/motion https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/motion.conf
