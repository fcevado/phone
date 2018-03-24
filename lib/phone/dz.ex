defmodule Phone.DZ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(213)()(.{8})/
  def country, do: "Algeria"
  def a2, do: "DZ"
  def a3, do: "DZA"

  matcher(:regex, ["213"])
end
