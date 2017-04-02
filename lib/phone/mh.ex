defmodule Phone.MH do
  use Helper.Country

  def regex, do: ~r/^(692)()(.{6,7})/
  def country, do: "Marshall Islands"
  def a2, do: "MH"
  def a3, do: "MHL"

  matcher :regex, ["692"]
end
