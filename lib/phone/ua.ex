defmodule Phone.UA do
  use Helper.Country

  def regex, do: ~r/^(380)()(.{9})/
  def country, do: "Ukraine"
  def a2, do: "UA"
  def a3, do: "UKR"

  matcher :regex, ["380"]
end
