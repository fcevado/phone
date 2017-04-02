defmodule Phone.NG do
  use Helper.Country

  def regex, do: ~r/^(234)()(.+)/
  def country, do: "Nigeria"
  def a2, do: "NG"
  def a3, do: "NGA"

  matcher :regex, ["234"]
end
