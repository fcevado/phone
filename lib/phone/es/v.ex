defmodule Phone.ES.V do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(96[0-3]|86[0-3])(.{6})/
  def area_name, do: "Valencia"
  def area_type, do: "province"
  def area_abbreviation, do: "V"

  matcher([
    "34960",
    "34961",
    "34962",
    "34963",
    "34860",
    "34861",
    "34862",
    "34863"
  ])
end
