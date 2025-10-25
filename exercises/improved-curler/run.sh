#!/bin/bash

# build the image
docker build . -t curler:v2

# run the container
docker run --rm curler:v2 testphp.vulnweb.com
