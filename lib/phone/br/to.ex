defmodule Phone.BR.TO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(63)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Tocantins"
  def area_type, do: "state"
  def area_abbreviation, do: "TO"

  matcher(["5563"])
end
