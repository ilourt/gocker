#!/bin/bash

PROJECT=`basename $PWD`
MODULE='ilourt/app'


docker build \
    --build-arg MODULE=$MODULE \
    -t ${PROJECT}-dev \
    -f ./build/dev/Dockerfile .