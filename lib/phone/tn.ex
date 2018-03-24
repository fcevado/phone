defmodule Phone.TN do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(216)()(.{8})/
  def country, do: "Tunisia"
  def a2, do: "TN"
  def a3, do: "TUN"

  matcher(:regex, ["216"])
end
