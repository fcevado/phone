defmodule Phone.GQ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(240)()(.{9})/
  def country, do: "Equatorial Guinea"
  def a2, do: "GQ"
  def a3, do: "GNQ"

  matcher(:regex, ["240"])
end
