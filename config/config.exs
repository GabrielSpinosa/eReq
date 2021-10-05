# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :eReq,
  ecto_repos: [EReq.Repo]

# Configures the endpoint
config :eReq, EReqWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F+NJhxc+fhXKY9SfVTdAznsmqsPkgFHgoNNmZVhZ6O1D0rUgzIdmeL67Eih3Af77",
  render_errors: [view: EReqWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: EReq.PubSub,
  live_view: [signing_salt: "HS5ZANYP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
