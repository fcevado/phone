defmodule Phone.NANP.DM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(767)([2-9].{6})$/
  def country, do: "Dominica"
  def a2, do: "DM"
  def a3, do: "DMA"

  matcher :regex, ["1767"]
end
