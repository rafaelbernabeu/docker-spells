#!/bin/bash

docker run --rm -e DISPLAY \
    --device=/dev/snd:/dev/snd \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    rbbernabeu/firefox