#!/bin/bash

# build image
docker build . -t yt-dlp

# run container
docker run --name yt-dlp yt-dlp

# check container diff
docker diff yt-dlp

# copy video from docker container to local machine (temporary container storage fix)
docker cp "yt-dlp:/my-workspace/Master’s Programme in Computer Science ｜ University of Helsinki [XsqlHHTGQrw].mp4" .
