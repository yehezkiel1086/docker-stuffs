#!/bin/bash

# create image
docker build . -t go-backend

# run container
docker run -d -p 127.0.0.1:8080:8080 --name backend go-backend
