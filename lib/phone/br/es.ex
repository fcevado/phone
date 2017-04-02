defmodule Phone.BR.ES do
  use Helper.Area

  def regex, do: ~r/^(55)(2[78])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Espírito Santo"
  def area_type, do: "state"
  def area_abbreviation, do: "ES"

  matcher ["5527", "5528"]
end
