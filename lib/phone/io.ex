defmodule Phone.IO do
  use Helper.Country

  def regex, do: ~r/^(246)() (.{7})/
  def country, do: "British Indian Ocean Territory"
  def a2, do: "IO"
  def a3, do: "IOT"

  matcher :regex, ["246"]
end
