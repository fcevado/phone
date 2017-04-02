defmodule Phone.HN do
  use Helper.Country

  def regex, do: ~r/^(504)()(.{8})/
  def country, do: "Honduras"
  def a2, do: "HN"
  def a3, do: "HND"

  matcher :regex, ["504"]
end
