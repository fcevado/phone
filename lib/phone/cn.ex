defmodule Phone.CN do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(86)()(.+)/
  def country, do: "China"
  def a2, do: "CN"
  def a3, do: "CHN"

  matcher(:regex, ["86"])
end
