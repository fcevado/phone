defmodule Phone.AE do
  use Helper.Country

  def regex, do: ~r/^(971)(.)(.{7})/
  def country, do: "United Arab Emirates"
  def a2, do: "AE"
  def a3, do: "ARE"

  matcher :regex, ["971"]
end
