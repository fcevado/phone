defmodule Phone.NANP.VI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(340)([2-9].{6})$/
  def country, do: "US Virgin Islands"
  def a2, do: "VI"
  def a3, do: "VIR"

  matcher :regex, ["1340"]
end
