defmodule Phone.HT do
  use Helper.Country

  def regex, do: ~r/^(509)()(.{8})/
  def country, do: "Haiti"
  def a2, do: "HT"
  def a3, do: "HTI"

  matcher :regex, ["509"]
end
