#!/bin/bash

# build the docker image
docker build . -t hello-docker

# run the docker image
docker run -d -it --name hello-docker hello-docker sh
