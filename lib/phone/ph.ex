defmodule Phone.PH do
  use Helper.Country

  def regex, do: ~r/^(63)()(.+)/
  def country, do: "Philippines"
  def a2, do: "PH"
  def a3, do: "PHL"

  matcher :regex, ["63"]
end
