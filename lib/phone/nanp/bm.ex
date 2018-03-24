defmodule Phone.NANP.BM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(441)([2-9].{6})$/
  def country, do: "Bermuda"
  def a2, do: "BM"
  def a3, do: "BMU"

  matcher(:regex, ["1441"])
end
