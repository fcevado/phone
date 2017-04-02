defmodule Phone.GE do
  use Helper.Country

  def regex, do: ~r/^(995)(.{3})(.{6})/
  def country, do: "Georgia"
  def a2, do: "GE"
  def a3, do: "GEO"

  matcher :regex, ["995"]
end
