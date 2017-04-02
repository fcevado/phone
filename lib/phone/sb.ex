defmodule Phone.SB do
  use Helper.Country

  def regex, do: ~r/^(677)()(.+)/
  def country, do: "Solomon Islands"
  def a2, do: "SB"
  def a3, do: "SLB"

  matcher :regex, ["677"]
end
