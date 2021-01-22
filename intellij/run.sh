#!/bin/bash

docker run -d --name intellij \
-e DISPLAY \
-v /home/rab/docker/intellij:/home/developer \
-v /tmp/.X11-unix:/tmp/.X11-unix \
rbbernabeu/intellij