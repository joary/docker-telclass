source ./config

xhost + local:docker                                                                                                                                                                          

docker stop telclass
docker rm telclass
docker run --name telclass \
  -ti --net=host --ulimit rtprio=99 --privileged \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /dev/bus/usb:/dev/bus/usb \
   $IMAGENAME bash


