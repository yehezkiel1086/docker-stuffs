#!/bin/bash

# pull docker image
docker pull devopsdockeruh/simple-web-service

# run container and publish port
docker run -p 127.0.0.1:3500:8080 devopsdockeruh/simple-web-service server
