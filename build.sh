#!/bin/bash

DIR=$(echo `pwd` | sed -e 's/^\///' -e 's/\//\\/g' -e 's/^./\0:/')

docker build -t mylambda .
docker run -v "${DIR}/dist":/var/dist mylambda
