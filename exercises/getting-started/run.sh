#!/bin/bash

# pull images
docker pull nginx:1.29-alpine
docker pull postgres:17-alpine
docker pull elestio/pgadmin:latest

# run images
docker run -d --name nginx nginx:1.29-alpine

docker run -d --name postgres \
	-e POSTGRES_PASSWORD=admin \
	-e POSTGRES_USER=postgres \
	postgres:17-alpine

docker run -d --name pgadmin \
  -e PGADMIN_DEFAULT_EMAIL=admin@example.com \
  -e PGADMIN_DEFAULT_PASSWORD=admin \
  -p 8081:80 \
  elestio/pgadmin:latest
