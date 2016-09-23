# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cheval,
  ecto_repos: [Cheval.Repo]

# Configures the endpoint
config :cheval, Cheval.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yembutHviZnjQeCDdZvcKhSYEP5ujc3i9xjMTjLMafNF/KM2KGXhiJ3l6n9nW2fh",
  render_errors: [view: Cheval.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cheval.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
