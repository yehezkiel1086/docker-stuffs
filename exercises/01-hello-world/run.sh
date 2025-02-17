#!/bin/bash

# pull images
./pull.sh

# start 3 containers
docker run -d --name nginx nginx:1.27.4-alpine
docker run -d --name redis redis:7-alpine
docker run -d --name alpine alpine:3.19 sh -c "while true; do date; sleep 1; done"

# check running containers
echo "After running 3 containers: "
docker container ls

# stop 2 containers
echo "After stopping 2 containers: "
docker container stop nginx redis

# check running containers
docker container ls