defmodule Phone.MM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(95)()(.{7,10})/
  def country, do: "Myanmar"
  def a2, do: "MM"
  def a3, do: "MMR"

  matcher(:regex, ["95"])
end
