FROM golang:1.22

WORKDIR /usr/src/app

COPY app/go.mod ./
RUN go mod download && go mod verify

COPY app ./
RUN go build -o /usr/local/bin/app ./...

CMD ["app"]