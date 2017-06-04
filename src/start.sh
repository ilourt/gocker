#!/bin/sh

go-wrapper download
go-wrapper install

if [ "$WATCH" = true ] ; then
  go get github.com/tockins/realize
  realize run
else
  go build -o goapp . && ./goapp
fi
