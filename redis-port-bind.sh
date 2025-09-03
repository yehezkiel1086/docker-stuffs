#!/bin/bash

# download redis
docker pull redis:7.4.2
docker pull redis:6.2.17

# run and bind different redis ports
docker run -d -p6000:6379 redis:7.4.2
docker run -d -p6001:6379 redis:6.2.17