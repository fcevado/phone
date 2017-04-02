defmodule Phone.NANP.US.AK do
  use Helper.Area

  def regex, do: ~r/^(1)(907)([2-9].{6})$/
  def area_name, do: "Alaska"
  def area_type, do: "state"
  def area_abbreviation, do: "AK"

  matcher ["1907"]
end
