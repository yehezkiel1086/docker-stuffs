#!/bin/bash

# build image
docker build . -t yt-dlp

# run container
docker run yt-dlp
