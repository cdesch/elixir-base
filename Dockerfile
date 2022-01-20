ARG IMAGE_VERSION=1.13-alpine

# Base Image from docker container registery
FROM elixir:$IMAGE_VERSION AS base

LABEL maintainer="CJ"
LABEL version="1.2"
LABEL license="MIT"
LABEL description="Base Elixir Image for Elixir Applications"

# Create the working directory for the application
RUN mkdir /app
WORKDIR /app

# Install hex and rebar by default
RUN mix local.hex --force && \
    mix local.rebar --force

# Add the base packages for alpine for build and utility
RUN apk add --no-cache build-base git python3 curl zsh

# Set the default command to mix
CMD ["mix"]