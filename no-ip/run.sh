#!/bin/bash

docker run -ti --rm \
    -e INTERVAL=15 \
    -e USER=rbbernabeu@gmail.com \
    -e PASSWORD=rFb913601584R \
    rbbernabeu/no-ip $@