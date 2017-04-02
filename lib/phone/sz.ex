defmodule Phone.SZ do
  use Helper.Country

  def regex, do: ~r/^(268)()(.{8})/
  def country, do: "Swaziland"
  def a2, do: "SZ"
  def a3, do: "SWZ"

  matcher :regex, ["268"]
end
