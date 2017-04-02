defmodule Phone.BR.CE do
  use Helper.Area

  def regex, do: ~r/^(55)(8[58])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Ceará"
  def area_type, do: "state"
  def area_abbreviation, do: "CE"

  matcher ["5585", "5588"]
end
