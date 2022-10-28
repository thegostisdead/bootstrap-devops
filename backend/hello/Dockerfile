FROM alpine:3.14
COPY . /app

# install elixir  
RUN apk add elixir
RUN apk add erlang
RUN mix local.rebar --force
RUN mix local.hex --force 

WORKDIR /app

# install elixir libs
RUN mix deps.get --force 

# install elixir libs
# RUN mix ecto.create

# install elixir libs
# RUN mix ecto.migrate
EXPOSE 4000

CMD mix phx.server