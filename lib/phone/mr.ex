defmodule Phone.MR do
  use Helper.Country

  def regex, do: ~r/^(222)()(.{8})/
  def country, do: "Mauritania"
  def a2, do: "MR"
  def a3, do: "MRT"

  matcher :regex, ["222"]
end
