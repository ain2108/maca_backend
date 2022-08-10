defmodule MacaBackend.Repo do
  use Ecto.Repo,
    otp_app: :maca_backend,
    adapter: Ecto.Adapters.Postgres
end
