# Docker Useful

## Table of Contents

- What is docker? What is a container?
- Docker vs Virtual Machine
- Docker installation
- Main commands
- Debugging a container
- Volumes - persisting data

Demo Project:

- Developing with containers
- Docker compose - running multiple services
- Dockerfile - building own docker image
- Private docker repo (AWS)
- Volumes demo

## What is docker?

### Overview

- what is a container and what problems it solve?
- container repository
- develop application
- deploy application

### What is a container?

- a way to package application with all the necessary dependencies and configurations
- portable artifact, easily moved around
- makes development and deployment more efficient

### Where do containers live?

- container repository
  <br>
  this is a special type of storage for containers
- private repositories
  <br>
  e.g: postgres, redis, nodejs, nginx all in one private repo
- public repositories for docker
  <br>
  the repos are saved in dockerhub

### Develop application (application dev - how containers improved)

- before containers:

  - have to install most of the services on own's OS directly (e.g: everyone in the team have to install the binaries of postgresql, redis, etc configure them depending how complex, run them on local dev environment, etc)
  - installation process different on each OS
  - many steps where something could go wrong

- after containers:
  - don't have to install any of the services directly on your local OS
  - own isolated environment with linux based image (the container is its own isolated env layer with linux based image)
  - packaged with all needed configurations
  - one command to install the app (fetches and run at the same time in one command)
  - run same app with 2 different versions

### Deploy application (how containers can improve the deployment process)

- before containers:

  - dev team will produce artifacts along with instructions of how to install and config those artifacts on the server (jar file) also a database service with a set of instructions of how to config it
  - then the developers give those artifacts to the operations team who will then handle setting up the environment to deploy those applications
  - configuration on the server needed (config everything no the OS)
  - dependency version conflicts
  - misunderstandings

- after containers:
  - developers and operations work together to package the application in a container
  - no environmental config needed on server - except docker runtime

## What is a container?

- layers of images
- mostly linux base image, because small in size (it's important that these linux base image to be small - one of the advantages of using containers)
- after base image, you have application images (e.g: postgres, etc) n.p: you usually have intermediate images which will lead up to the application images, on top of that you'll have configuration datas

### Docker image vs Docker container

1. Image

- the actual package (e.g: config, postgres, start script)
- artifact that can be moved around
- not running

2. Container

- when you pull an image on local machine and start it (start the application)
- container environment is created
- running

## Sources

- [Techworld with Nana](https://www.youtube.com/watch?v=3c-iBn73dDE)
