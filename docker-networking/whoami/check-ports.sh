#!/bin/bash

docker compose port --index 1 whoami 8000
docker compose port --index 2 whoami 8000
docker compose port --index 3 whoami 8000
