defmodule Phone.BR.RO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(69)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Rondônia"
  def area_type, do: "state"
  def area_abbreviation, do: "RO"

  matcher ["5569"]
end
