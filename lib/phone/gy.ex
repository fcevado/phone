defmodule Phone.GY do
  use Helper.Country

  def regex, do: ~r/^(592)()(.{8})/
  def country, do: "Guyana"
  def a2, do: "GY"
  def a3, do: "GUY"

  matcher :regex, ["592"]
end
