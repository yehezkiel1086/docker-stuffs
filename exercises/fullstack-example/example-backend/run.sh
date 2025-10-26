#!/bin/bash

# build image
docker build . -t backend

# run container
docker run -d -p 8080:8080 --name backend backend
