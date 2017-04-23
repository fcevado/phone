defmodule Phone.NANP.PR do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(787|939)([2-9].{6})$/
  def country, do: "Puerto Rico"
  def a2, do: "PR"
  def a3, do: "PRI"

  matcher :regex, ["1787", "1939"]
end
