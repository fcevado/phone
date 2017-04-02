defmodule Phone.PA do
  use Helper.Country

  def regex, do: ~r/^(507)()(.{7})/
  def country, do: "Panama"
  def a2, do: "PA"
  def a3, do: "PAN"

  matcher :regex, ["507"]
end
