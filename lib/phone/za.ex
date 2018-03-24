defmodule Phone.ZA do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(27)()(.{10})/
  def country, do: "South Africa"
  def a2, do: "ZA"
  def a3, do: "ZAF"

  matcher(:regex, ["27"])
end
