defmodule MediumClone.Repo do
  use Ecto.Repo,
    otp_app: :medium_clone,
    adapter: Ecto.Adapters.Postgres
end
