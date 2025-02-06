#!/bin/bash

# remove image
docker image rm hello-world

# or
docker rmi hello-world

# remove all dangling images
docker image prune