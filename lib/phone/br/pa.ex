defmodule Phone.BR.PA do
  use Helper.Area

  def regex, do: ~r/^(55)(9[134])([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Pará"
  def area_type, do: "state"
  def area_abbreviation, do: "PA"

  matcher ["5591", "5593", "5594"]
end
