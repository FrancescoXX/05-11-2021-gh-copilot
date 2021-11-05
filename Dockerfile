# Create a Dockerfile for a Go webserver

# The base image is the Go base image
FROM golang:1.9


# Install Go
RUN apt-get update && apt-get install -y golang-go


# Create a Go project
WORKDIR /go/src/myapp
COPY . .

RUN go get -u github.com/gin-gonic/gin

RUN go build

# Run the Go project
CMD ["go", "run", "example.go"]
