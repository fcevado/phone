defmodule Phone.GW do
  use Helper.Country

  def regex, do: ~r/^(245)()(.{7})/
  def country, do: "Guinea-Bissau"
  def a2, do: "GW"
  def a3, do: "GNB"

  matcher :regex, ["245"]
end
