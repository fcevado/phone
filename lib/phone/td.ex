defmodule Phone.TD do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(235)()(.{8})/
  def country, do: "Chad"
  def a2, do: "TD"
  def a3, do: "TCD"

  matcher(:regex, ["235"])
end
