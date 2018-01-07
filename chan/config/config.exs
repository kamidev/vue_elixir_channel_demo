# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chan, ChanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XHieYiOK+HKG6pFrqGMld6zyoFC0sV7JzWGDLYLKvAnbnkiTSUWvCpIJ+5oR2r5T",
  render_errors: [view: ChanWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chan.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
