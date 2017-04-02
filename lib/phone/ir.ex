defmodule Phone.IR do
  use Helper.Country

  def regex, do: ~r/^(98)()(.+)/
  def country, do: "Iran"
  def a2, do: "IR"
  def a3, do: "IRN"

  matcher :regex, ["98"]
end
