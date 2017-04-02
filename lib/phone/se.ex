defmodule Phone.SE do
  use Helper.Country

  def regex, do: ~r/^(46)()(.+)/
  def country, do: "Sweden"
  def a2, do: "SE"
  def a3, do: "SWE"

  matcher :regex, ["46"]
end
