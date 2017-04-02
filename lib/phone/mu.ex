defmodule Phone.MU do
  use Helper.Country

  def regex, do: ~r/^(230)()(.{8})/
  def country, do: "Mauritius"
  def a2, do: "MU"
  def a3, do: "MUS"

  matcher :regex, ["230"]
end
