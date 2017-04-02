defmodule Phone.VN do
  use Helper.Country

  def regex, do: ~r/^(84)()(.+)/
  def country, do: "Vietnam"
  def a2, do: "VN"
  def a3, do: "VNM"

  matcher :regex, ["84"]
end
