#!/bin/bash

docker run -d ^
    --name mysql ^
    -p 3306:3306 ^
    -v C:\Users\rbber\docker\mysql:/var/lib/mysql ^
    -e MYSQL_ROOT_PASSWORD=rbbernabeu ^
    --network docker_net ^
    mysql
 