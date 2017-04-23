defmodule Phone.NANP.KY do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(345)([2-9].{6})$/
  def country, do: "Cayman Islands"
  def a2, do: "KY"
  def a3, do: "CYM"

  matcher :regex, ["1345"]
end
