defmodule Phone.PS do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(970)()(.{8,9})/
  def country, do: "Palestine"
  def a2, do: "DJ"
  def a3, do: "DJI"

  matcher(:regex, ["970"])
end
