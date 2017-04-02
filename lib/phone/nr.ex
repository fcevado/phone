defmodule Phone.NR do
  use Helper.Country

  def regex, do: ~r/^(674)()(.{7})/
  def country, do: "Nauru"
  def a2, do: "NR"
  def a3, do: "NRU"

  matcher :regex, ["674"]
end
