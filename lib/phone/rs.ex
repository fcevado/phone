defmodule Phone.RS do
  use Helper.Country

  def regex, do: ~r/^(381)()(.+)/
  def country, do: "Serbia"
  def a2, do: "RS"
  def a3, do: "SRB"

  matcher :regex, ["381"]
end
