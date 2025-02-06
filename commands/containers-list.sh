#!/bin/bash

# list all running containers
docker container ls

# shorter command
docker ps

# or
docker ls

# list all containers (including the not running ones)
docker container ls -a

# or
docker ps -a

# could also used with pipes
docker ps -a | grep hello-world