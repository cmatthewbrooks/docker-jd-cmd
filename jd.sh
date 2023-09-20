#!/bin/bash

IMG="jd-cmd"
TAG="latest"

echo $(pwd)
ls "$(pwd)/data"

if [ $# -eq 1 ] && [ "$1" == "build" ]; then
    docker build -t $IMG:$TAG .
elif [ $# -gt 1 ]; then

    # TODO: Strip "run" off the arg string as this throws a small error
    # that "Input file run doesn't exist"
    docker run --rm -ti \
    -v "$(pwd)":/data \
    -w /data \
    $IMG:$TAG "$@"
else
    echo "[+] This script requires a build or run command"
fi
