defmodule Phone.TW do
  use Helper.Country

  def regex, do: ~r/^(886)()(.+)/
  def country, do: "Taiwan"
  def a2, do: "TW"
  def a3, do: "TWN"

  matcher :regex, ["886"]
end
