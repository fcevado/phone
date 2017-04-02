defmodule Phone.ZM do
  use Helper.Country

  def regex, do: ~r/^(260)()(.{7})/
  def country, do: "Zambia"
  def a2, do: "ZM"
  def a3, do: "ZMB"

  matcher :regex, ["260"]
end
