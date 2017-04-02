defmodule Phone.NANP.BB do
  use Helper.Country

  def regex, do: ~r/^(1)(246)([2-9].{6})$/
  def country, do: "Barbados"
  def a2, do: "BB"
  def a3, do: "BRB"

  matcher :regex, ["1246"]
end
