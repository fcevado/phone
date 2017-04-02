defmodule Phone.LK do
  use Helper.Country

  def regex, do: ~r/^(94)()(.{9})/
  def country, do: "Sri Lanka"
  def a2, do: "LK"
  def a3, do: "LKA"

  matcher :regex, ["94"]
end
