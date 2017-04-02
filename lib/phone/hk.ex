defmodule Phone.HK do
  use Helper.Country

  def regex, do: ~r/^(852)()(.{8})/
  def country, do: "Hong Kong"
  def a2, do: "HK"
  def a3, do: "HKG"

  matcher :regex, ["852"]
end
