#!/bin/bash

docker run --name jenkins \
    -p 8082:8080 \
    -p 50000:50000 \
    --network docker_net \
    jenkins/jenkins:lts