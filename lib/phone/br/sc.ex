defmodule Phone.BR.SC do
  use Helper.Area

  def regex, do: ~r/^(55)(4[7-9])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Santa Catarina"
  def area_type, do: "state"
  def area_abbreviation, do: "SC"

  matcher ["5547", "5548", "5549"]
end
