defmodule Phone.BR.AL do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(82)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Alagoas"
  def area_type, do: "state"
  def area_abbreviation, do: "AL"

  matcher(["5582"])
end
