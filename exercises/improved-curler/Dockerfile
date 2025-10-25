FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY ./script.sh .

RUN chmod a+x ./script.sh
RUN apt-get update && apt-get install -y curl

ENTRYPOINT ["/usr/src/app/script.sh"]

CMD ["example.com"]
