defmodule Phone.LR do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(231)()(.{7,9})/
  def country, do: "Liberia"
  def a2, do: "LR"
  def a3, do: "LBR"

  matcher(:regex, ["231"])
end
