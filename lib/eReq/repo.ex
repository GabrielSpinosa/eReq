defmodule EReq.Repo do
  use Ecto.Repo,
    otp_app: :eReq,
    adapter: Ecto.Adapters.Tds
end
