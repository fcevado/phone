defmodule Phone.NANP.US.ID do
  use Helper.Area

  def regex, do: ~r/^(1)(208)([2-9].{6})$/
  def area_name, do: "Idaho"
  def area_type, do: "state"
  def area_abbreviation, do: "ID"

  matcher ["1208"]
end
