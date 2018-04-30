#!/bin/sh

if [ "$GO_DEP" = true ]; then
  go get -u github.com/golang/dep/cmd/dep
  dep init
  dep ensure -update
else
  go install -v .
fi

if [ "$DEBUG" = true ] ; then
  go get github.com/derekparker/delve/cmd/dlv
  go get github.com/cortesi/modd/cmd/modd
  modd -f ./modd-debug.conf
fi

if [ "$WATCH" = true ] ; then
  go get github.com/cortesi/modd/cmd/modd
  modd
fi

if [ "$BUILD" = true ] ; then
  go build -o $BIN_NAME .
  if [ "$EXEC" = true ] ; then
    ./$BIN_NAME
  fi
fi
