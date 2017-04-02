defmodule Phone.AM do
  use Helper.Country

  def regex, do: ~r/^(374)()(.{8})/
  def country, do: "Armenia"
  def a2, do: "AM"
  def a3, do: "ARM"

  matcher :regex, ["374"]
end
