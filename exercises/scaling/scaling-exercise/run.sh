#!/bin/bash

# run scaled containers
docker compose up -d --scale compute=10
