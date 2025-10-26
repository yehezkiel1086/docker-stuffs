#!/bin/bash

# build image
docker build . -t frontend

# run container
docker run -d -p 5000:5000 --name frontend frontend
