defmodule Phone.GB do
  use Helper.Country

  def regex, do: ~r/^(44)()(.{10})/
  def country, do: "United Kingdom"
  def a2, do: "GB"
  def a3, do: "GBR"

  matcher :regex, ["44"]
end
