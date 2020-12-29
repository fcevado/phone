defmodule Phone.NANP.JM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(658|876)([2-9].{6})$/
  def country, do: "Jamaica"
  def a2, do: "JA"
  def a3, do: "JAM"

  matcher(:regex, ["1658", "1876"])
end
