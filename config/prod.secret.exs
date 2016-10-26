use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :hnlinksearch, Hnlinksearch.Endpoint,
  secret_key_base: "79i2dC3CG1k2VHqv6TPu2KB9d248q/Y7V6Ny9div4KzTfuoulugNi6J3CEFRnYLh"

# Configure your database
config :hnlinksearch, Hnlinksearch.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hnlinksearch_prod",
  pool_size: 20
