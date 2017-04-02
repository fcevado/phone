defmodule Phone.PY do
  use Helper.Country

  def regex, do: ~r/^(595)()(.+)/
  def country, do: "Paraguay"
  def a2, do: "PY"
  def a3, do: "PRY"

  matcher :regex, ["595"]
end
