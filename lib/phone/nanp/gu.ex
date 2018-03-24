defmodule Phone.NANP.GU do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(671)([2-9].{6})$/
  def country, do: "Guam"
  def a2, do: "GU"
  def a3, do: "GUM"

  matcher(:regex, ["1671"])
end
