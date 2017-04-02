defmodule Phone.OM do
  use Helper.Country

  def regex, do: ~r/^(968)()(.{8})/
  def country, do: "Oman"
  def a2, do: "OM"
  def a3, do: "OMN"

  matcher :regex, ["968"]
end
