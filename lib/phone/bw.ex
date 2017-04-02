defmodule Phone.BW do
  use Helper.Country

  def regex, do: ~r/^(267)()(.{7})/
  def country, do: "Botswana"
  def a2, do: "BW"
  def a3, do: "BWA"

  matcher :regex, ["267"]
end
