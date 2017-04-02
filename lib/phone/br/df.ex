defmodule Phone.BR.DF do
  use Helper.Area

  def regex, do: ~r/^(55)(61)([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Distrito Federal"
  def area_type, do: "district"
  def area_abbreviation, do: "DF"

  matcher ["5561"]
end
