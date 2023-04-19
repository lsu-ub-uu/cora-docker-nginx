#!/bin/bash

BASENAME=${1:-'/'}

NAME=cora-nginx

echo Building $NAME with BASENAME $BASENAME

docker build --no-cache --pull \
    --build-arg BASENAME=$BASENAME \
    -t $NAME ./docker