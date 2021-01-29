#!/bin/bash

docker run --rm -ti -e DISPLAY \
    --device=/dev/snd:/dev/snd \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
    -v /dev/shm:/dev/shm \
    -v /dev/dri:/dev/dri \
    rbbernabeu/popcorn-time