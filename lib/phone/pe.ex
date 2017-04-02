defmodule Phone.PE do
  use Helper.Country

  def regex, do: ~r/^(51)()(.{8,9})/
  def country, do: "Peru"
  def a2, do: "PE"
  def a3, do: "PER"

  matcher :regex, ["51"]
end
