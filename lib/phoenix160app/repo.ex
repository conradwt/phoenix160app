defmodule Phoenix160app.Repo do
  use Ecto.Repo,
    otp_app: :phoenix160app,
    adapter: Ecto.Adapters.Postgres
end
