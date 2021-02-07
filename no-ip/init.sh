#!/bin/bash

noip2 -C -I eth0 -Y -u ${USER} -p ${PASSWORD} -U ${INTERVAL}
noip2 -d
tail --pid=$(pidof noip2) -f /dev/null