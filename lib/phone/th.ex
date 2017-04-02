defmodule Phone.TH do
  use Helper.Country

  def regex, do: ~r/^(66)()(.+)/
  def country, do: "Thailand"
  def a2, do: "TH"
  def a3, do: "THA"

  matcher :regex, ["66"]
end
