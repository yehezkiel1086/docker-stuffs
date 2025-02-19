#!/bin/bash

# build image
docker build . -t node-frontend

# run container
docker run -p 127.0.0.1:5000:5000 --name frontend node-frontend
