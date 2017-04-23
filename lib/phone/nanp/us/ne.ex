defmodule Phone.NANP.US.NE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(308|402|531)([2-9].{6})$/
  def area_name, do: "Nebraska"
  def area_type, do: "state"
  def area_abbreviation, do: "NE"

  matcher ["1308", "1402", "1531"]
end
