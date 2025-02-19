#!/bin/bash

# build image
docker build . -t spring-web

# run container
docker run -p 127.0.0.0:8080:8080 --name spring-web spring-web
