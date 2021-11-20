ARG IMAGE_VERSION=1.12-alpine

FROM elixir:$IMAGE_VERSION AS base

LABEL maintainer="CJ"
LABEL version="1.0"
LABEL license="MIT"
LABEL description="Base Elixir Image for Elixir Applications"

RUN mkdir /app
WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

CMD ["mix"]