FROM ubuntu:22.04

# change workdir to /workspace
WORKDIR /workspace

# install curl
RUN apt-get update && apt install curl -y

# copy script
COPY script.sh .

# make script.sh executable
RUN chmod +x ./script.sh

# define script.sh as entrypoint
ENTRYPOINT ["./script.sh"]

# define default value
CMD ["vulnweb.com"]
