defmodule Phone.RW do
  use Helper.Country

  def regex, do: ~r/^(250)()(.{9})/
  def country, do: "Rwanda"
  def a2, do: "RW"
  def a3, do: "RWA"

  matcher :regex, ["250"]
end
