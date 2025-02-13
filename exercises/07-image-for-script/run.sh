#!/bin/bash

docker build . -t web_getter

docker run -it web_getter

