#!/bin/bash

# pull image
docker pull devopsdockeruh/simple-web-service

# create text.log if not existing locally
mkdir logs
touch logs/text.log

# run container with local storage
docker run -d --name logger -v "$(pwd)/logs/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service

# listen to the local log file changes
tail -f logs/text.log
