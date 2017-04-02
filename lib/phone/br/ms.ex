defmodule Phone.BR.MS do
  use Helper.Area

  def regex, do: ~r/^(55)(67)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Mato Grosso do Sul"
  def area_type, do: "state"
  def area_abbreviation, do: "MS"

  matcher ["5567"]
end
