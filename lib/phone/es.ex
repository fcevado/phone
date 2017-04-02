defmodule Phone.ES do
  use Helper.Country

  def regex, do: ~r/^(34)()(.{9})/
  def country, do: "Spain"
  def a2, do: "ES"
  def a3, do: "ESP"
  
  matcher :regex, ["34"]
end
