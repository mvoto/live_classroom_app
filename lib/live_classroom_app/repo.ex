defmodule LiveClassroomApp.Repo do
  use Ecto.Repo,
    otp_app: :live_classroom_app,
    adapter: Ecto.Adapters.Postgres
end
