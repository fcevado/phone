defmodule Phone.NANP.US.DE do
  use Helper.Area

  def regex, do: ~r/^(1)(302)([2-9].{6})$/
  def area_name, do: "Delaware"
  def area_type, do: "state"
  def area_abbreviation, do: "DE"

  matcher ["1302"]
end
