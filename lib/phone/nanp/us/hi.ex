defmodule Phone.NANP.US.HI do
  use Helper.Area

  def regex, do: ~r/^(1)(808)([2-9].{6})$/
  def area_name, do: "Hawaii"
  def area_type, do: "state"
  def area_abbreviation, do: "HI"

  matcher ["1808"]
end
