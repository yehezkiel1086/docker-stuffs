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

### Interesting

- if you install the same application with different versions in docker, you don't have to install the already existing layer from previous versions, just have to install the unexisting ones
- docker can run different versions of the same application at the same time without interruption

## Docker vs virtual machine

### Overview

- docker on OS level
- different levels of abstractions
- why linux-based docker containers don't run on windows

### Docker on OS level

1. Operating system layers
   a. applications layer --> run on kernel layer
   b. OS kernel layer --> communicates with hardware
2. Docker layers
   a. applications layer
3. Virtual machine layers
   a. applications layer
   b. OS kernel layer

note:

- both Docker and VM are virtualization tools
- because docker is only consisted of applications layer, its size is much smaller than the vm, it runs much faster
- compatibility: VM of any OS can run on any OS host but you can't do that with docker

## Docker - basic commands

### Overview

- container vs image
- version and tag
- docker commands: docker pull, docker run, docker start, docker stop, docker ps, docker exec -it, docker logs

### Container vs image

- all the artifacts in the docker hub are images
- container is a running environment for image
- application image: postgres, redis, mongo, ... needs file system, config files, environmental configs. All these env files are provided by container
- port binded: talk to application running inside of container
- virtual file system

### Basic commands

- pull redis image from dockerhub to laptop

```
> docker pull redis
```

- check all the existing images on the laptop

```
> docker images
```

- running redis so applications can connect to it (we'll have to make a container of that redis image)

```
> docker run redis
```

note: if you want redis to keep running, don't close it!
<br><br>
there's an option to make it possible to run the container in detached mode

```
> docker run -d redis
```

- list running containers

```
> docker ps
```

- stopping a container (you'll have to add the container's id - just the short id, not the full one)

```
> docker stop [container_id]
```

- starting a stopped container (you'll have to add the container's id - just the short id, not the full one)

```
> docker start [container_id]
```

- show both the not running and running containers

```
> docker ps -a
```

- running two redis images with 2 different versions on your laptop

- pulling an image and starting it (to make it a container) at the same time (<code>docker pull \[image\] && docker start \[image\]</code>)

```
> docker run redis:4.0
```

How do we use any containers that we started now?

### CONTAINER port vs HOST port

- Multiple containers can run on your host machine
- your laptop has only certain ports available
- conflict when same port on host machine
- however, you can have multiple containers running on the same CONTAINER port (as long as you bind them to different HOST port)
- now, we can connect our applications to the running containers using the port of the host, the host will know how to forward the request to the container using the port binding

### Binding the container's port and the host's port

- this is to make our containers available to our applications through the host port
- to do this we have to specify the ports binding during the run command
- first we have to stop our containers which we want to configure the port bindings

```
> docker run -p[host_port]:[container_port] [image_name]
```

e.g:

```
> docker run -p6000:6379 redis
```

you could also run it in detach mode

```
> docker run -p6000:6379 redis -d
```

## Sources

- [Techworld with Nana](https://www.youtube.com/watch?v=3c-iBn73dDE)
