FROM joarypl/docker-gnuradio
MAINTAINER Joary Paulo

COPY telclass /home/telclass

RUN pacman -Sy --noconfirm python2-matplotlib
