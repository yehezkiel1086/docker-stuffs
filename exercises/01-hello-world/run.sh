#!/bin/sh

# run 3 containers
sudo docker run -d --name apache-container apache/skywalking-oap-server:10.1.0
sudo docker run -d --name redis-container redis:7.4.2
sudo docker run -d --name nginx-container nginx:1.27.3
