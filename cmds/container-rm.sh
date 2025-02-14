#!/bin/bash

# remove one container
docker container rm hello-world

# or
docker rm hello-world

# remove multiple containers
docker rm redis nginx

# forcefully remove container (without stopping first)
docker rm --force infallible_cerf

# remove all stopped containers
docker container prune