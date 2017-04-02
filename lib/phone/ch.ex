defmodule Phone.CH do
  use Helper.Country

  def regex, do: ~r/^(41)()(.{9,10})/
  def country, do: "Switzerland"
  def a2, do: "CH"
  def a3, do: "CHE"

  matcher :regex, ["41"]
end
