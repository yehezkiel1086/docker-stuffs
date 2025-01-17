#!/bin/bash

# kill running containers
sudo docker kill apache-container
sudo docker kill nginx-container
sudo docker kill redis-container

# remove containers
sudo docker rm apache-container
sudo docker rm nginx-container
sudo docker rm redis-container