defmodule Phone.GM do
  use Helper.Country

  def regex, do: ~r/^(220)()(.{7})/
  def country, do: "Gambia"
  def a2, do: "GM"
  def a3, do: "GMB"

  matcher :regex, ["220"]
end
