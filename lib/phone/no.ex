defmodule Phone.NO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(47)()([2-9].{7}|0.{3})/
  def country, do: "Norway"
  def a2, do: "NO"
  def a3, do: "NOR"

  matcher(:regex, ["47"])
end
