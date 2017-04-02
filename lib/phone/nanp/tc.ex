defmodule Phone.NANP.TC do
  use Helper.Country

  def regex, do: ~r/^(1)(649)([2-9].{6})$/
  def country, do: "Turks and Caicos Islands"
  def a2, do: "TC"
  def a3, do: "TCA"

  matcher :regex, ["1649"]
end
