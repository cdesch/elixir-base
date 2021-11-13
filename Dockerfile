FROM elixir:1.12-alpine AS base

RUN mkdir /app
WORKDIR /app

RUN mix local.hex --force
RUN mix local.rebar --force

CMD ["mix"]