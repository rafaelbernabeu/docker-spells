#!/bin/bash

docker run -d \
    --name mysql \
    -p 3306:3306 \
    -v ~/docker/mysql:/var/lib/mysql \
    --network docker_net \
    mysql
 