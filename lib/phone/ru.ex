defmodule Phone.RU do
  use Helper.Country

  def regex, do: ~r/^(7)([3-589]..)(.{7})/
  def country, do: "Russia"
  def a2, do: "RU"
  def a3, do: "RUS"

  matcher :regex, ["73", "75", "78", "79"]
end
