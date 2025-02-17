#!/bin/bash

# pull ubuntu image
./pull.sh

# run ubuntu container
docker run -it --rm ubuntu:20.04 sh -c 'apt-get update && apt install curl -y; while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
