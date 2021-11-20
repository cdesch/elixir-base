#!/bin/bash

IMAGE_VERSION=1.12.3-alpine

# Build the Version
echo "Building Container Image elixir:$IMAGE_VERSION"
docker build -t cdesch/elixir-base:$IMAGE_VERSION --build-arg IMAGE_VERSION=$IMAGE_VERSION . 

# Push to Docker Hub
echo "Pushing elixir:$IMAGE_VERSION to Docker"
docker push cdesch/elixir-base:$IMAGE_VERSION

echo "Finished!"