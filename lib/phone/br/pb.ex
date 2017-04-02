defmodule Phone.BR.PB do
  use Helper.Area

  def regex, do: ~r/^(55)(83)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Paraíba"
  def area_type, do: "state"
  def area_abbreviation, do: "PB"

  matcher ["5583"]
end
