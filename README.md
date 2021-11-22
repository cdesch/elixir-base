# elixir-base

A [Base Image](https://hub.docker.com/r/cdesch/elixir-base) for [Elixir](https://elixir-lang.org/) Applications using the [Elixir Image](https://hub.docker.com/_/elixir)

## Build Script

Build with default image Version

    ./build.sh

Build a specific version

    ./build.sh 1.12-alpine
    ./build.sh 1.12.3-alpine
    ./build.sh 1.13.0-rc.1-alpine
    ./build.sh 1.13-alpine

## Docker Build

Build and Push to Docker Hub

    docker build -t cdesch/elixir-base -t cdesch/elixir-base:1.12-alpine .
    docker push cdesch/elixir-base
    docker push cdesch/elixir-base:1.12-alpine

    elixir:1.12.3-alpine
