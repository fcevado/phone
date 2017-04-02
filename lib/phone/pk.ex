defmodule Phone.PK do
  use Helper.Country

  def regex, do: ~r/^(92)()(.+'')/
  def country, do: "Pakistan"
  def a2, do: "PK"
  def a3, do: "PAK"

  matcher :regex, ["92"]
end
