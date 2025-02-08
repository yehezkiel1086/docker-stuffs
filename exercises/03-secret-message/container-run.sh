#!/bin/bash

# run the container
docker run -d -it --name logger devopsdockeruh/simple-web-service:ubuntu

# get into the container
docker exec -it logger bash