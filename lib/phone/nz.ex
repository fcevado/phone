defmodule Phone.NZ do
  use Helper.Country

  def regex, do: ~r/^(64)()(.+)/
  def country, do: "New Zealand"
  def a2, do: "NZ"
  def a3, do: "NZL"

  matcher :regex, ["64"]
end
