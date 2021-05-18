defmodule Phone.ES.M do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(91[0-9]|81[0-9])(.{6})$/
  def area_name, do: "Comunidad de Madrid"
  def area_type, do: "province"
  def area_abbreviation, do: "M"

  matcher([
    "34910",
    "34911",
    "34912",
    "34913",
    "34914",
    "34915",
    "34916",
    "34917",
    "34918",
    "34919",
    "34810",
    "34811",
    "34812",
    "34813",
    "34814",
    "34815",
    "34816",
    "34817",
    "34818",
    "34819"
  ])
end
