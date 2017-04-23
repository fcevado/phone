defmodule Phone.SA do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(966)()(.+)/
  def country, do: "Saudi Arabia"
  def a2, do: "SA"
  def a3, do: "SAU"

  matcher :regex, ["966"]
end
