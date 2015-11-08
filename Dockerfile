FROM remonlam/rpi-rasbian:jessie
MAINTAINER Remon Lam <remon.lam@virtualclouds.info>

RUN apt-get update && apt-get install -y wget tar
RUN wget -P /tmp https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/install-motion.sh
RUN wget -P / https://raw.githubusercontent.com/remonlam/rpi-docker-motion/master/entrypoint.sh
RUN chmod 755 /./entrypoint.sh
RUN chmod 755 /tmp/./install-motion.sh
RUN /tmp/./install-motion.sh

CMD /./entrypoint.sh

EXPOSE 80
