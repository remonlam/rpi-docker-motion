#Running Motion in a Container on Raspbian Jessie
![Docker & Raspberry Pi](/images/docker+rpi.png)

##Create a image from the Docker file
docker build -t rpi-docker-motion .

##Once you successfully created the Docker image, it's time to start a new container;
docker run -d -p 80:8081 --device=/dev/video0 rpi-docker-motion /entrypoint.sh

##But how can I start the container at boot
Well that's kinda easy just add the command "docker start 65875d7b0658" (<-- that number is the container ID) to "/etc/rc.local"
