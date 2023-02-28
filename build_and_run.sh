#!/usr/bin/env bash

IMAGE_NAME="shiny-demo"
IMAGE_TAG="latest"
IMAGE="${IMAGE_NAME}:${IMAGE_TAG}"

docker build -t ${IMAGE} ./demo &&
docker run --init --rm -it --name ${IMAGE_NAME} -p 5000:5000 ${IMAGE}
