#!/bin/bash

# build image
docker compose build

# run container
docker compose run yt-dlp https://youtu.be/gut1jyzwFV8?si=PU0SGr9hX9vZ_Z5e
