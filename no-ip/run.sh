#!/bin/bash

docker run -d --name noip --rm \
    -e INTERVAL={update time in minutes} \
    -e USER={email-here} \
    -e PASSWORD={password-here} \
    rbbernabeu/no-ip