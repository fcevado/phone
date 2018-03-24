defmodule Phone.BR.AM do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(9[27])([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Amazonas"
  def area_type, do: "state"
  def area_abbreviation, do: "AM"

  matcher(["5592", "5597"])
end
