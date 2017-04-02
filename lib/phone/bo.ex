defmodule Phone.BO do
  use Helper.Country

  def regex, do: ~r/^(591)()(.{8})/
  def country, do: "Bolivia"
  def a2, do: "BO"
  def a3, do: "BOL"

  matcher :regex, ["581"]
end
