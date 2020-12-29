defmodule Phone.NANP.VC do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(784)([2-9].{6})$/
  def country, do: "Saint Vincent and the Grenadines"
  def a2, do: "VC"
  def a3, do: "VCT"

  matcher(:regex, ["1784"])
end
