defmodule Phone.NU do
  use Helper.Country

  def regex, do: ~r/^(683)()(.{4})/
  def country, do: "Niue"
  def a2, do: "NU"
  def a3, do: "NIU"

  matcher :regex, ["683"]
end
