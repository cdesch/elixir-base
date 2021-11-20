#!/bin/bash

# Default image version
IMAGE_VERSION=1.12.3-alpine

if [ $# -eq 0 ]
  then
    echo "Building default image version elixir:$IMAGE_VERSION"
  else
    IMAGE_VERSION=$1
    echo "Building image version elixir:$IMAGE_VERSION"
fi

echo "$1"


# Build the Version
echo "Building Container Image elixir:$IMAGE_VERSION"
docker build -t cdesch/elixir-base:$IMAGE_VERSION --build-arg IMAGE_VERSION=$IMAGE_VERSION . 

# Push to Docker Hub
echo "Pushing elixir:$IMAGE_VERSION to Docker"
docker push cdesch/elixir-base:$IMAGE_VERSION

echo "Finished!"