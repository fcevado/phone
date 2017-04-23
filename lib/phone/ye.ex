defmodule Phone.YE do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(967)()(.+)/
  def country, do: "Yemen"
  def a2, do: "YE"
  def a3, do: "YEM"

  matcher :regex, ["967"]
end
