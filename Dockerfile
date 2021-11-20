ARG IMAGE_VERSION=1.12-alpine

# FROM elixir:1.12.3-alpine AS base
FROM elixir:$IMAGE_VERSION AS base

RUN mkdir /app
WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

CMD ["mix"]