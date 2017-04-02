defmodule Phone.SN do
  use Helper.Country

  def regex, do: ~r/^(221)()(.{7})/
  def country, do: "Senegal"
  def a2, do: "SN"
  def a3, do: "SEN"

  matcher :regex, ["221"]
end
