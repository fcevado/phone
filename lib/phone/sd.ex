defmodule Phone.SD do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(249)()(.+)/
  def country, do: "Sudan"
  def a2, do: "SD"
  def a3, do: "SDN"

  matcher(:regex, ["249"])
end
