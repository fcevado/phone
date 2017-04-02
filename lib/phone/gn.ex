defmodule Phone.GN do
  use Helper.Country

  def regex, do: ~r/^(224)()(.{8})/
  def country, do: "Guinea"
  def a2, do: "GN"
  def a3, do: "GIN"

  matcher :regex, ["224"]
end
