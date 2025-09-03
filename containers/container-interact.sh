#!/bin/bash

# run tty
docker run -t ubuntu

# run interactive tty
docker run -it ubuntu

# run interactive tty inline (detached mode) with name
docker run -d -it --name looper ubuntu sh -c 'while true; do date; sleep 1; done'

# follow the output logs
docker logs -f looper

# pause and unpause the looper without exiting
docker pause looper
docker unpause looper

# attach looper (will stop if user press ^c)
docker attach looper

# attach looper (not stopping if user press ^c)
docker attach --no-stdin looper

# run command to looper (execute commands on running container)
docker exec looper ls -la

# run bash to running container
docker exec -it looper bash

# the looper won't stop on `stop` command
docker stop looper

# use kill instead (faster)
docker kill looper

# remove looper
docker rm looper

# kill and remove looper in 1 line
docker rm --force looper

# remove automatically after executed (`docker start` can't be used after removed automatically)
docker run -d --rm -it --name looper-it ubuntu sh -c 'while true; do date; sleep 1; done'

# try attaching it then press ctrl^c
docker attach looper

# check the process (it's gone!)
docker ps -a