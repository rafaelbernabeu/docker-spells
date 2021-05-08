#!/bin/bash

docker run -d --name sonar \
    -p 8083:9000 \
    --network docker_net \
    sonarqube