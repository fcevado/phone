defmodule Phone.NANP.MS do
  use Helper.Country

  def regex, do: ~r/^(1)(664)([2-9].{6})$/
  def country, do: "Montserrat"
  def a2, do: "MS"
  def a3, do: "MSR"

  matcher :regex, ["1664"]
end
