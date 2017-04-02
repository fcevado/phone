defmodule Phone.CF do
  use Helper.Country

  def regex, do: ~r/^(236)()(.{8})/
  def country, do: "Central African Republic"
  def a2, do: "CF"
  def a3, do: "CAF"

  matcher :regex, ["236"]
end
