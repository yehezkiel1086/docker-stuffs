#!/bin/bash

# pull the image
docker pull devopsdockeruh/simple-web-service

# run the container and open local port at 3500
docker run --name web-service -p 127.0.0.1:3500:8080 devopsdockeruh/simple-web-service server

# test using curl
curl -X GET http://127.0.0.1:3500 
