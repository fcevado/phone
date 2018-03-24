defmodule Phone.HU do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(36)()(.{8,9})/
  def country, do: "Hungary"
  def a2, do: "HU"
  def a3, do: "HUN"

  matcher(:regex, ["36"])
end
