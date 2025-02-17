#!/bin/bash

# pull image
./pull.sh

# run the container
docker run -d -it --name secret_logger devopsdockeruh/simple-web-service:ubuntu

# output the logs and find the secret messages
echo "Wait for the secret message: "
docker exec secret_logger tail -f ./text.log
