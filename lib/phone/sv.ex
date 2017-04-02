defmodule Phone.SV do
  use Helper.Country

  def regex, do: ~r/^(503)()(.{7,8})/
  def country, do: "El Salvador"
  def a2, do: "SV"
  def a3, do: "SLV"

  matcher :regex, ["503"]
end
