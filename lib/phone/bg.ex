defmodule Phone.BG do
  use Helper.Country

  def regex, do: ~r/^(359)()(.{8,9})/
  def country, do: "Bulgaria"
  def a2, do: "BG"
  def a3, do: "BGR"

  matcher :regex, ["359"]
end
