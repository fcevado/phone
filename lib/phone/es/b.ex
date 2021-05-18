defmodule Phone.ES.B do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(93[0-9]|83[0-9])(.{6})$/
  def area_name, do: "Barcelona"
  def area_type, do: "province"
  def area_abbreviation, do: "B"

  matcher([
    "34930",
    "34931",
    "34932",
    "34933",
    "34934",
    "34935",
    "34936",
    "34937",
    "34938",
    "34939",
    "34830",
    "34831",
    "34832",
    "34833",
    "34834",
    "34835",
    "34836",
    "34837",
    "34838",
    "34839"
  ])
end
