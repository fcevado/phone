defmodule Phone.NANP.US.CT do
  use Helper.Area

  def regex, do: ~r/^(1)(203|475|860|959)([2-9].{6})$/
  def area_name, do: "Connecticut"
  def area_type, do: "state"
  def area_abbreviation, do: "CT"

  matcher ["1203", "1475", "1860", "1959"]
end
