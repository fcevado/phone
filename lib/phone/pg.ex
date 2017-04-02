defmodule Phone.PG do
  use Helper.Country

  def regex, do: ~r/^(675)()(.+)/
  def country, do: "Papua New Guinea"
  def a2, do: "PG"
  def a3, do: "PNG"

  matcher :regex, ["675"]
end
