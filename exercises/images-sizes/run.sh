#!/bin/bash

# pull images
./pull.sh

# check image sizes
echo "Image sizes comparison: "
docker image ls

# run containers
docker run -d -it --name secret_logger_ubuntu devopsdockeruh/simple-web-service:ubuntu
docker run -d -it --name secret_logger_alpine devopsdockeruh/simple-web-service:alpine