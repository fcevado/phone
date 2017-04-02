defmodule Phone.PF do
  use Helper.Country

  def regex, do: ~r/^(689)()(.{8})/
  def country, do: "French Polynesia"
  def a2, do: "PF"
  def a3, do: "PYF"

  matcher :regex, ["689"]
end
