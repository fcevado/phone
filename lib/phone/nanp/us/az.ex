defmodule Phone.NANP.US.AZ do
  use Helper.Area

  def regex, do: ~r/^(1)(480|520|602|623|928)([2-9].{6})$/
  def area_name, do: "Arizona"
  def area_type, do: "state"
  def area_abbreviation, do: "AZ"

  matcher ["1480", "1520", "1602", "1623", "1928"]
end
