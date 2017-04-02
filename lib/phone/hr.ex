defmodule Phone.HR do
  use Helper.Country

  def regex, do: ~r/^(385)()(.{8,9})/
  def country, do: "Croatia"
  def a2, do: "HR"
  def a3, do: "HRV"

  matcher :regex, ["385"]
end
