#!/bin/bash

# run ubuntu container
docker run -d -it --name devops_ubuntu devopsdockeruh/simple-web-service:ubuntu

# run alpine container
docker run -d -it --name devops_alpine devopsdockeruh/simple-web-service:alpine