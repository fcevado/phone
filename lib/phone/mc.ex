defmodule Phone.MC do
  use Helper.Country

  def regex, do: ~r/^(377)()(.{9})/
  def country, do: "Monaco"
  def a2, do: "MC"
  def a3, do: "MCO"

  matcher :regex, ["377"]
end
