defmodule Phone.BR.RR do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(95)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Roraima"
  def area_type, do: "state"
  def area_abbreviation, do: "RR"

  matcher ["5595"]
end
