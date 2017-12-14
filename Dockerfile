# build stage
FROM golang:latest
MAINTAINER Brian Redmond <brianisrunning@gmail.com>
WORKDIR /app
ADD ./*.go /app/
RUN cd /app && GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o go-web

ENTRYPOINT /app/go-web
EXPOSE 8081
