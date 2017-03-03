# <ruby>愛<rp>(</rp><rt>あい</rt><rp>)</rp></ruby> ai

A product of <ruby>
  <ruby>
    青<rp>(</rp><rt>せい</rt><rp>)</rp>
    心<rp>(</rp><rt>しん</rt><rp>)</rp>
    工<rp>(</rp><rt>こう</rt><rp>)</rp>
    機<rp>(</rp><rt>き</rt><rp>)</rp>
  </ruby>
  <rp>(</rp><rt>seishinkouki</rt><rp>)</rp>
</ruby> Co., Ltd

## Table of Contents

* [CODE_OF_CONDUCT](https://github.com/mirai-audio/mir/wiki/CODE_OF_CONDUCT)
* [CONTRIBUTING](https://github.com/mirai-audio/mir/blob/master/.github/CONTRIBUTING.md)

## Prerequisites

You will need the following tools properly installed:

* [Git](https://git-scm.com/)
* [Elixir](http://elixir-lang.org/)
* [Docker](https://www.docker.com/)

```bash
brew install elixir  # installs Erlang & Elixir
mix local.hex  # install hex package manager
brew cask install docker  # used to run PostgreSQL
```

These are done when bootstrapping a new Phoenix project.

```bash
mix local.hex --force && \  # install hex package manager
  mix local.rebar --force
# install phoenix framework
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
mix project.new .  # scaffold a new Phoenix project
```

## Running / Development

Run the PostgreSQL db server (via Docker)

```bash
docker run -it -p 5432:5432 --rm \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=postgres \
  --name postgres \
  postgres
```

To create the database schema and run migrations:

```bash
mix ecto.create  # create schema
mix ecto.migrate  # run migrations
```

Run Phoenix:

```bash
mix phoenix.server
```

Now you can visit [localhost:4000](localhost:4000) from your browser.

# Running Tests

* `mix test`
