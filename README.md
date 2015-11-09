#Motion in a Container on Raspbian Jessie
![Docker & Raspberry Pi](/images/docker+rpi.png)

##How to get all of this running
Well first of all you need to have a Raspberry Pi and a micro SD card ( minimal 8GB).
Second you need to have Raspbian Jessie, why not Wheezy? well currently Jessie is the only version that supports Docker out of the box (well sort of).

####Copy and run the "pre-installer"
What this script will do is make sure you're system is up to date and install the latest firmware versions for the Pi.
Once that's done it will install Docker and pull a test image, also it will download the Dockerfile that we need for the next step.

To download the scrip execute the following command;

wget https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/pre-install.sh && chmod 755 pre-install.sh

Once that has been done it's time to execute the script;

./pre-install.sh

####Create a image from the Docker file
cd /home/pi/rpi-docker-motion
docker build -t rpi-docker-motion .

####Once you successfully created the Docker image, it's time to start a new container;
docker run -d -p 80:8081 --device=/dev/video0 rpi-docker-motion /entrypoint.sh

####But how can I start the container at boot
Well that's kinda easy just add the command "docker start 65875d7b0658" (<-- that number is the container ID) to "/etc/rc.local"

##View the camera
Once everything is running, we could access the camera by browsing to http://IP-OF-THE-PI (for example: http://192.168.0.100).
NOTE: I've experienced some issues with Internet Explorer, however Firefox, Chrome and Safari should work okay.

##Some extra options
####Disable camera LED
To disable the camera led just add "disable_camera_led=1" to "/boot/config.txt".

####Rotate camera 180
Change the line "rotate 0" to "rotate 180" in /etc/motion/motion.conf
