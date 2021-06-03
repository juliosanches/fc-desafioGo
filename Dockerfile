FROM golang:1.16

WORKDIR /go/src/app
COPY ola.go .

CMD ["go", "run", "ola.go"]