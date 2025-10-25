#!/bin/bash

# build docker image
docker build . -t curler

# run container
docker run -it --rm curler
