defmodule Phone.NANP.BS do
  use Helper.Country

  def regex, do: ~r/^(1)(242)([2-9].{6})$/
  def country, do: "Bahamas"
  def a2, do: "BS"
  def a3, do: "BHS"

  matcher :regex, ["1242"]
end
