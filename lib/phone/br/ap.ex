defmodule Phone.BR.AP do
  use Helper.Area

  def regex, do: ~r/^(55)(96)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Amapá"
  def area_type, do: "state"
  def area_abbreviation, do: "AP"

  matcher ["5596"]
end
