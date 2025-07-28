#!/bin/bash

docker stop rabbitmq
docker stop redis
docker stop nginx

docker rm rabbitmq
docker rm redis
docker rm nginx

docker rmi nginx:1.29.0-alpine
docker rmi redis:8.0.3-alpine
docker rmi rabbitmq:4.1.2-alpine
