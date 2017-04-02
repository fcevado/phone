defmodule Phone.MZ do
  use Helper.Country

  def regex, do: ~r/^(258)()(.+)/
  def country, do: "Mozambique"
  def a2, do: "MZ"
  def a3, do: "MOZ"

  matcher :regex, ["258"]
end
