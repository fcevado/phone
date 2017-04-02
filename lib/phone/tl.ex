defmodule Phone.TL do
  use Helper.Country

  def regex, do: ~r/^(670)()(.{8})/
  def country, do: "East Timor"
  def a2, do: "TL"
  def a3, do: "TLS"

  matcher :regex, ["670"]
end
