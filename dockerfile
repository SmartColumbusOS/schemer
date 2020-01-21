FROM elixir:1.8.2-alpine

COPY . /app
WORKDIR /app
ENV PATH="/root/.mix/escripts:${PATH}"

RUN mix local.hex --force \
&&  mix local.rebar --force \
&&  mix deps.get \
&&  mix escript.build \
&&  mix escript.install --force

ENTRYPOINT [ "schemer" ]
