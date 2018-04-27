#!/bin/sh

if [ "$GO_DEP" = true ]; then
  go get -u github.com/golang/dep/cmd/dep
  dep init
  dep ensure -update
else
  go install -v .
fi

if [ "$WATCH" = true ] ; then
  go get github.com/cortesi/modd/cmd/modd
  modd
else
  go build -o goapp .
  if [ "$EXEC" = true ] ; then
    ./goapp
  fi
fi
