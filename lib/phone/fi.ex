defmodule Phone.FI do
  use Helper.Country

  def regex, do: ~r/^(358)()(.+)/
  def country, do: "Finland"
  def a2, do: "FI"
  def a3, do: "FIN"

  matcher :regex, ["358"]
end
