#!/bin/bash

echo "10 lines of ubuntu secret:"

# read 10 lines of ubuntu container
docker exec devops_ubuntu head -n 10 text.log

echo ""
echo "10 lines of alpine secret:"

# read 10 lines of alpine container
docker exec devops_alpine head -n 10 text.log