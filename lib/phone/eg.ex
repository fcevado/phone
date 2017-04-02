defmodule Phone.EG do
  use Helper.Country

  def regex, do: ~r/^(20)()(.+)/
  def country, do: "Egypt"
  def a2, do: "EG"
  def a3, do: "EGY"

  matcher :regex, ["20"]
end
