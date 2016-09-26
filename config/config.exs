# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tick_tock,
  ecto_repos: [TickTock.Repo]

# Configures the endpoint
config :tick_tock, TickTock.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pMtkuUn9jrpJyqkZD/X7l9WY5ELj7rg5T602agtYZkcvrxsrCmIrOzwOPq/hVC0h",
  render_errors: [view: TickTock.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TickTock.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
