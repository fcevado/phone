defmodule Phone.UZ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(998)()(.{9})/
  def country, do: "Uzbekistan"
  def a2, do: "UZ"
  def a3, do: "UZB"

  matcher :regex, ["998"]
end
