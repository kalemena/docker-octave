#!/bin/bash

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

#xhost +local:
xhost + $IP

export DISPLAY=host.docker.internal:0

cd $HOME

docker run -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME:$HOME \
    -e DISPLAY=$DISPLAY \
    --user $UID:$GID \
    --privileged \
    kalemena/octave:latest /bin/bash -c "export HOME=$HOME; USER=$USER; cd $HOME; octave --force-gui"