defmodule Phone.SH do
  use Helper.Country

  def regex, do: ~r/^(290)()(.{5})/
  def country, do: "Saint Helena and Tristan da Cunha"
  def a2, do: "SH"
  def a3, do: "SHN"

  matcher :regex, ["290"]
end
