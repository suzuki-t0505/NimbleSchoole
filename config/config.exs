# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :nimble_school, NimbleSchoolWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iXiH6l3Vz7NM7RsQHx8nAAKc1K0IRVKmzrqgSzQsECdrLT2VKM3jHIKtskjZ+sDM",
  render_errors: [view: NimbleSchoolWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NimbleSchool.PubSub,
  live_view: [signing_salt: "IqS6C/OI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
