defmodule Phone.SR do
  use Helper.Country

  def regex, do: ~r/^(597)()(.{6,7})/
  def country, do: "Suriname"
  def a2, do: "SR"
  def a3, do: "SUR"

  matcher :regex, ["597"]
end
