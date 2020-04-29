defmodule Phone.ES.IntelligentNumbers do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(34)(90[0-2]|905|800|803|80[6-7]|70[0-9])(.{6})$/
  def country, do: "Spain intelligent-number"
  def a2, do: "ES"
  def a3, do: "ESP"

  matcher(:regex, [
    "34900",
    "34901",
    "34902",
    "34905",
    "34800",
    "34803",
    "34806",
    "34807",
    "34700",
    "34701",
    "34702",
    "34703",
    "34704",
    "34705",
    "34706",
    "34707",
    "34708",
    "34709",
  ])
end