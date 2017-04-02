defmodule Phone.NANP.US.ME do
  use Helper.Area

  def regex, do: ~r/^(1)(207)([2-9].{6})$/
  def area_name, do: "Maine"
  def area_type, do: "state"
  def area_abbreviation, do: "ME"

  matcher ["1207"]
end
