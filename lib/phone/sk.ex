defmodule Phone.SK do
  use Helper.Country

  def regex, do: ~r/^(421)()(.+)/
  def country, do: "Slovakia"
  def a2, do: "SK"
  def a3, do: "SVK"

  matcher :regex, ["421"]
end
