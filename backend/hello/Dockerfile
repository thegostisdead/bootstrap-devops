FROM alpine:3.14
COPY . /app

# install elixir  
RUN apk add elixir
RUN apk add erlang
RUN apk add wget
RUN mix local.rebar --force
RUN mix local.hex --force 

WORKDIR /app

# install elixir libs
ENV PGUSER=dorian
ENV PGPASSWORD=
ENV PGDATABASE=sqdsqd
ENV PGPORT=5432
ENV PGHOST=localhost

RUN mix deps.get --force 

# install elixir libs
# RUN mix ecto.create

# install elixir libs
# RUN mix ecto.migrate
EXPOSE 4000
HEALTHCHECK --interval=10s --timeout=3s \
  CMD wget --no-verbose --tries=1 --spider http://localhost:4000/ || exit 1
ENTRYPOINT [ "sh" ]
CMD [ "./entrypoint.sh" ]