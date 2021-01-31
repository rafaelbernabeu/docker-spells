#!/bin/bash

docker run -ti --rm --name nginx \
    -p 80:80 \
    -v /home/rab/docker/intellij/IdeaProjects/cotador-app/dist/cotador-app:/usr/share/nginx/html:ro \
    --network docker_net \
    nginx 
