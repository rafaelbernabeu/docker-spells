#!/bin/bash

docker run -d --name intellij \
    -e DISPLAY \
    --device=/dev/snd:/dev/snd \
    -v /home/rab/docker/intellij:/home/developer \
    -v ~/.m2:/home/developer/.m2 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 8080:8080 \
    -p 4200:4200 \
    --network docker_net \
    rbbernabeu/intellij