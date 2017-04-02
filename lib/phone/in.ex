defmodule Phone.IN do
  use Helper.Country

  def regex, do: ~r/^(91)()(.+)/
  def country, do: "India"
  def a2, do: "IN"
  def a3, do: "IND"

  matcher :regex, ["91"]
end
