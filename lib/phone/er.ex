defmodule Phone.ER do
  use Helper.Country

  def regex, do: ~r/^(291)(.)(.{6})/
  def country, do: "Eritrea"
  def a2, do: "ER"
  def a3, do: "ERI"
  
  matcher :regex, ["291"]
end
