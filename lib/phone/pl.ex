defmodule Phone.PL do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(48)()(.+)/
  def country, do: "Poland"
  def a2, do: "PL"
  def a3, do: "POL"

  matcher(:regex, ["48"])
end
