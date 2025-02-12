#!/bin/bash

# search for images from dockerhub
docker search hello-world

# search for images from "rancher"
docker search rancher/hello

# pull latest tagged images
docker pull ubuntu

# pull specific version of images
docker pull ubuntu:22.04

# tag images locally
docker tag ubuntu:22.04 ubuntu:jammy_jellyfish

# rename images
docker tag ubuntu:22.04 fav_distro:jammy_jellyfish