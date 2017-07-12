# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :famchat,
  ecto_repos: [Famchat.Repo]

# Configures the endpoint
config :famchat, Famchat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UIlGI/hbL0cp9y6hpTyjDCJsk58EraiPkTDPAgMDAcuXedDKYccWWUelwYp+ivjS",
  render_errors: [view: Famchat.ErrorView, accepts: ~w(json)],
  pubsub: [name: Famchat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
