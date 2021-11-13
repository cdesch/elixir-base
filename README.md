# elixir-base

A Base Image for [Elixir](https://elixir-lang.org/) Applications

## Build

Build and Push to Docker Hub

    docker build -t cdesch/elixir-base -t cdesch/elixir-base:1.12-alpine .
    docker push cdesch/elixir-base
    docker push cdesch/elixir-base:1.12-alpine
