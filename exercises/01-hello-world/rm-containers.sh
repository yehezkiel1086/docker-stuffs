#!/bin/bash

# checking initial conditions
echo "Containers before removal: "
docker container ls -a
echo "Images before removal: "
docker image ls

# remove all containers
docker container rm --force alpine redis nginx

# remove all images
docker rmi alpine:3.19 nginx:1.27.4-alpine redis:7-alpine

# checking images and containers after removal
echo "Containers after removal: "
docker ps -a
echo "Images after removal: "
docker image ls
