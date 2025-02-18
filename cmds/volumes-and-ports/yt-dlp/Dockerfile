FROM ubuntu:22.04

# define workspace
WORKDIR /my-workspace

# install stuffs
RUN apt-get update && apt install python3 curl -y
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp

# copy local.txt
COPY ./local.txt .

# define how to run
ENTRYPOINT ["/usr/local/bin/yt-dlp"]

# define what to run
CMD ["https://www.youtube.com/watch?v=XsqlHHTGQrw"]
