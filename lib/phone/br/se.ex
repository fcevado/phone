defmodule Phone.BR.SE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(79)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Sergipe"
  def area_type, do: "state"
  def area_abbreviation, do: "SE"

  matcher ["5579"]
end
