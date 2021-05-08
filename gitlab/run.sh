#!/bin/bash

sudo docker run --detach \
  --hostname gitlab \
  --publish 443:443 --publish 8081:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume ~/docker/gitlab/config:/etc/gitlab \
  --volume ~/docker/gitlab/logs:/var/log/gitlab \
  --volume ~/docker/gitlab/data:/var/opt/gitlab \
  --network docker_net \
  gitlab/gitlab-ce:latest