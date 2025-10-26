#!/bin/bash

# build image
docker build . -t rails

# run container
docker run -d -p 3000:3000 --name rails rails
