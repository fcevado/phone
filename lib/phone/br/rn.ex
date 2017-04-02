defmodule Phone.BR.RN do
  use Helper.Area

  def regex, do: ~r/^(55)(84)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Rio Grande do Norte"
  def area_type, do: "state"
  def area_abbreviation, do: "RN"

  matcher ["5584"]
end
