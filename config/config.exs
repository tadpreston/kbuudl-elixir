# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kbuudl,
  ecto_repos: [Kbuudl.Repo]

# Configures the endpoint
config :kbuudl, KbuudlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eV9OSfP1rI3dEykVPmq7pnVZhoaZ3ZlNl2LEkN6DCkOp2ed76VRZ6yURW32AV62Z",
  render_errors: [view: KbuudlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kbuudl.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
