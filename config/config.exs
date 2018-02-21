# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ex_app,
  ecto_repos: [ExApp.Repo]

# Configures the endpoint
config :ex_app, ExAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mxUea3RWnV2tAQMi5Hg+jaJl9aMk7BT9pwFL0NHK7SUuCO3fqakhBv3VYqlHNrbK",
  render_errors: [view: ExAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
