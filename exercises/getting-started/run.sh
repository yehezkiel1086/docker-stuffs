#!/bin/bash

docker run -d --name nginx nginx:1.29.0-alpine
docker run -d --name redis redis:8.0.3-alpine
docker run -d --name rabbitmq rabbitmq:4.1.2-alpine
