defmodule Phone.SS do
  use Helper.Country

  def regex, do: ~r/^(211)()(.+)/
  def country, do: "South Sudan"
  def a2, do: "SS"
  def a3, do: "SSD"

  matcher :regex, ["211"]
end
