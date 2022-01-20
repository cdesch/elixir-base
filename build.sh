#!/bin/bash
# Bash Script for manually building the packages

# Default image version
IMAGE_VERSION=1.13-alpine

# Check if a param was passed for the IMAGE_VERSION variable
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
docker build -t cdesch/elixir-base:$IMAGE_VERSION   . 
echo "Finished Building!"

# Push to Docker Hub
echo "Pushing elixir:$IMAGE_VERSION to Docker"
docker push cdesch/elixir-base:$IMAGE_VERSION

echo "Finished Pushing!"
echo "Completed Build and Push of cdesch/elixir-base:$IMAGE_VERSION"