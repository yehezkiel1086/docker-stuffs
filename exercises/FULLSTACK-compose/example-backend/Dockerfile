FROM golang:1.16

WORKDIR /myenv
EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000
COPY . .

RUN go build
RUN go test ./...

CMD ["./server"]
