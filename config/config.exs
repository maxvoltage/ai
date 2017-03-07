# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ai,
  ecto_repos: [Ai.Repo]

# Configures the endpoint
config :ai, Ai.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "changeme",  # override by an environment specific config
  render_errors: [view: Ai.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ai.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :format_encoders,
  "json-api": Poison

  config :mime, :types, %{
    "application/vnd.api+json" => ["json-api"],
    "application/json" => ["json"]
  }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
