defmodule Phone.BY do
  use Helper.Country

  def regex, do: ~r/^(375)()(.{9})/
  def country, do: "Belarus"
  def a2, do: "BY"
  def a3, do: "BLR"

  matcher :regex, ["375"]
end
