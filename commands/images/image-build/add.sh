#!/bin/bash

# copy a new file to the old built Dockerfile container
docker cp ./add.txt hello-docker:/usr/src/app

# see the updated container difference
docker diff hello-docker

# commit updated docker image by creating new updated image
docker commit hello-docker hello-docker-add

# check the newly created (updated) image
docker image ls
