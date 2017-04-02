defmodule Phone.NANP.GD do
  use Helper.Country

  def regex, do: ~r/^(1)(473)([2-9].{6})$/
  def country, do: "Grenada"
  def a2, do: "GD"
  def a3, do: "GRD"

  matcher :regex, ["1473"]
end
