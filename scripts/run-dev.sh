#!/bin/bash

PROJECT=`basename $PWD`

docker run  \
    --rm \
    -it \
    -e MODULE=ilourt/app \
    -v $PWD:/home/gopher/project \
    ${PROJECT}-dev \
    /bin/bash