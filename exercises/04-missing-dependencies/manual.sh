#!/bin/bash

# run the command
docker run -d -it --name search ubuntu:20.04 sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'

# install curl
docker exec search apt-get update -y
docker exec search apt install curl -y

# attach
docker attach search