defmodule Phone.NANP.TollFree do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(800|833|844|855|866|877|888)([2-9].{6})$/
  def country, do: "NANP toll-free"
  def a2, do: ""
  def a3, do: ""

  matcher(:regex, ["1800", "1833", "1844", "1855", "1866", "1877", "1888"])
end
