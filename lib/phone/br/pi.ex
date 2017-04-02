defmodule Phone.BR.PI do
  use Helper.Area

  def regex, do: ~r/^(55)(8[69])([2-5|89].{7}|9[89].{7})/
  def area_name, do: "Piauí"
  def area_type, do: "state"
  def area_abbreviation, do: "PI"

  matcher ["5586", "5589"]
end
