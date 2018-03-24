defmodule Phone.NANP.SX do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(721)([2-9].{6})$/
  def country, do: "Sint Maarten"
  def a2, do: "SX"
  def a3, do: "SXM"

  matcher(:regex, ["1721"])
end
