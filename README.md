#Running Motion in a Container on Raspbian Jessie

##Create a image from the Docker file
docker build -t rpi-docker-motion .

##Once you successfully created the Docker image, it's time to start a new container;
docker run -d -p 80:8081 --device=/dev/video0 rpi-docker-motion /entrypoint.sh
