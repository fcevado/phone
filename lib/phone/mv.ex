defmodule Phone.MV do
  use Helper.Country

  def regex, do: ~r/^(960)()(.{7})/
  def country, do: "Maldives"
  def a2, do: "MV"
  def a3, do: "MDV"

  matcher :regex, ["960"]
end
