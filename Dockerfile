ARG IMAGE_VERSION=1.13-alpine

FROM elixir:$IMAGE_VERSION AS base

LABEL maintainer="CJ"
LABEL version="1.2"
LABEL license="MIT"
LABEL description="Base Elixir Image for Elixir Applications"

RUN mkdir /app
WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

RUN apk add --no-cache build-base git python3 curl zsh

CMD ["mix"]