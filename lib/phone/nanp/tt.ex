defmodule Phone.NANP.TT do
  use Helper.Country

  def regex, do: ~r/^(1)(868)([2-9].{6})$/
  def country, do: "Trinidad and Tobago"
  def a2, do: "TT"
  def a3, do: "TTO"

  matcher :regex, ["1868"]
end
