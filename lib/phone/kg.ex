defmodule Phone.KG do
  use Helper.Country

  def regex, do: ~r/^(996)()(.{9})/
  def country, do: "Kyrgyzstan"
  def a2, do: "KG"
  def a3, do: "KGZ"

  matcher :regex, ["996"]
end
