defmodule Phone.AL do
  use Helper.Country

  def regex, do: ~r/^(355)()(.{7})/
  def country, do: "Albania"
  def a2, do: "AL"
  def a3, do: "ALB"

  matcher :regex, ["355"]
end
