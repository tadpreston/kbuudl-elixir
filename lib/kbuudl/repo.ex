defmodule Kbuudl.Repo do
  use Ecto.Repo,
    otp_app: :kbuudl,
    adapter: Ecto.Adapters.Postgres
end
