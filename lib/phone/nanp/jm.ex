defmodule Phone.NANP.JM do
  use Helper.Country

  def regex, do: ~r/^(1)(876)([2-9].{6})$/
  def country, do: "Jamaica"
  def a2, do: "JA"
  def a3, do: "JAM"

  matcher :regex, ["1876"]
end
