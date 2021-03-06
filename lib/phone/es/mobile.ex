defmodule Phone.ES.Mobile do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(34)(6[0-9]|7[1-4])(.{7})$/
  def country, do: "Spain Mobile"
  def a2, do: "ES"
  def a3, do: "ESP"

  matcher(:regex, [
    "3460",
    "3461",
    "3462",
    "3463",
    "3464",
    "3465",
    "3466",
    "3467",
    "3468",
    "3469",
    "3471",
    "3472",
    "3473",
    "3474"
  ])
end
