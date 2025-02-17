FROM ubuntu:22.04

WORKDIR /root

RUN apt-get update && apt install curl -y

COPY script.sh .

RUN chmod +x ./script.sh

CMD ./script.sh
