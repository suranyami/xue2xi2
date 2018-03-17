use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :xue2xi2, Xue2xi2Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :xue2xi2, Xue2xi2.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "xue2xi2_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
