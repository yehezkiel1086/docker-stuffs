#!/bin/bash

# build the image
docker build . -t web-server

# run the container
docker run --rm -p 127.0.0.1:8080:8080 web-server
