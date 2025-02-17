#!/bin/bash

# show images before pulling
echo "Images before pulling: "
docker image ls

# run images
docker pull nginx:1.27.4-alpine
docker pull redis:7-alpine
docker pull alpine:3.19

# show images after pulling
echo "Images after pulling: "
docker image ls