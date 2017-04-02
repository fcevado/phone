defmodule Phone.NANP.US.NH do
  use Helper.Area

  def regex, do: ~r/^(1)(603)([2-9].{6})$/
  def area_name, do: "New Hampshire"
  def area_type, do: "state"
  def area_abbreviation, do: "NH"

  matcher ["1603"]
end
