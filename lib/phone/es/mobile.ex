defmodule Phone.ES.Mobile do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(34)(6[0-9]|7[1-4])(.{7})$/
  def country, do: "Spain Mobile"
  def a2, do: "ES"
  def a3, do: "ESP"

  matcher(:regex, ["346", "3471", "3472", "3473", "3474"])
end
