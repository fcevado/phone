defmodule Phone.BD do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(880)()(.{10})/
  def country, do: "Bangladesh"
  def a2, do: "BD"
  def a3, do: "BGD"

  matcher :regex, ["880"]
end
