# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hnlinksearch,
  ecto_repos: [Hnlinksearch.Repo]

# Configures the endpoint
config :hnlinksearch, Hnlinksearch.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tLe67ZNpHJwNNAeKwQGTlJ/jba30uJ5CDBYaD29I0QTG+XGebibcNRvC7hmfh6AJ",
  render_errors: [view: Hnlinksearch.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hnlinksearch.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
