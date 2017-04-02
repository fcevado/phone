defmodule Phone.TO do
  use Helper.Country

  def regex, do: ~r/^(676)()(.+)/
  def country, do: "Tonga"
  def a2, do: "TO"
  def a3, do: "TON"

  matcher :regex, ["676"]
end
