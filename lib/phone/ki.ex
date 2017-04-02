defmodule Phone.KI do
  use Helper.Country

  def regex, do: ~r/^(686)()(.{5})/
  def country, do: "Kiribati"
  def a2, do: "KI"
  def a3, do: "KIR"

  matcher :regex, ["686"]
end
