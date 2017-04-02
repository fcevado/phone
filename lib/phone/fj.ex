defmodule Phone.FJ do
  use Helper.Country

  def regex, do: ~r/^(679)()(.{7})/
  def country, do: "Fiji"
  def a2, do: "FJ"
  def a3, do: "FJI"

  matcher :regex, ["679"]
end
