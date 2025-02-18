#!/bin/bash

# build image
docker build . -t curler:v2

# run container
docker run --name curler curler:v2
