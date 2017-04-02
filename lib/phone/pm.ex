defmodule Phone.PM do
  use Helper.Country

  def regex, do: ~r/^(508)()(.{6})/
  def country, do: "Saint Pierre and Miquelon"
  def a2, do: "PM"
  def a3, do: "SPM"

  matcher :regex, ["508"]
end
