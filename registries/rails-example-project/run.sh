#!/bin/bash

# build image
docker build . -t ruby-web-app

# run container
docker run -p 127.0.0.1:3000:3000 --name ruby-web-app ruby-web-app
