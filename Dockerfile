FROM golang:1.8

ARG USER
ARG UID

RUN useradd $USER -o -u $UID
USER $USER

WORKDIR /go/src/app
