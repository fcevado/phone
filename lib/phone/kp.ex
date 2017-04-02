defmodule Phone.KP do
  use Helper.Country

  def regex, do: ~r/^(850)()(.+)/
  def country, do: "North Korea"
  def a2, do: "KP"
  def a3, do: "PRK"

  matcher :regex, ["850"]
end
