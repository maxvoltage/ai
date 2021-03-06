use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ai, AiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ai, Ai.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("ENV_AI_DB_URL") || "ecto://postgres:postgres@localhost/ai_test",
  pool: Ecto.Adapters.SQL.Sandbox
