#!/bin/bash

# build the image
docker build . -t web-server

# run the container
docker run web-server
