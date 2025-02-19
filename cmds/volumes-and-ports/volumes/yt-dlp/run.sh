#!/bin/bash

# build image
docker build . -t yt-dlp

# run container with single local file volume as storage
docker run --name yt-dlp-file -v "$(pwd)/local.txt:/my-workspace/local.txt" yt-dlp

# run container with local dir volume as storage (create "volume" dir locally)
docker run --name yt-dlp -v "$(pwd)/volume:/my-workspace" yt-dlp
