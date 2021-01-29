#!/bin/bash

docker run -d --name intellij \
    -e DISPLAY \
    --device=/dev/snd:/dev/snd \
    -v ~/.m2:/home/developer/.m2 \
    -v /home/rab/docker/intellij:/home/developer \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    rbbernabeu/intellij