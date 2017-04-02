defmodule Phone.KE do
  use Helper.Country

  def regex, do: ~r/^(254)()(.+)/
  def country, do: "Kenya"
  def a2, do: "KE"
  def a3, do: "KEN"

  matcher :regex, ["254"]
end
