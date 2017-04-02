defmodule Phone.VU do
  use Helper.Country

  def regex, do: ~r/^(678)()(.{5})/
  def country, do: "Vanuatu"
  def a2, do: "VU"
  def a3, do: "VUT"

  matcher :regex, ["678"]
end
