defmodule Phone.BR.MA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(9[98])([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Maranhão"
  def area_type, do: "state"
  def area_abbreviation, do: "MA"

  matcher ["5598", "5599"]
end
