#!/bin/bash

# run
docker run -d -it --name search ubuntu:20.04 sh -c 'apt-get update; apt install curl -y; while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'

# attach
docker attach search