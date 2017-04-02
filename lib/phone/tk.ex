defmodule Phone.TK do
  use Helper.Country

  def regex, do: ~r/^(690)([1-9])(.{3})/
  def country, do: "Tokelau"
  def a2, do: "TK"
  def a3, do: "TKL"

  matcher :regex, ["690"]
end
