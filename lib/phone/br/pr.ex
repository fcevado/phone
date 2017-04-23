defmodule Phone.BR.PR do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(4[1-6])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Paraná"
  def area_type, do: "state"
  def area_abbreviation, do: "PR"

  matcher ["5541", "5546"]
end
