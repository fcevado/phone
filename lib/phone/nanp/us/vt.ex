defmodule Phone.NANP.US.VT do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(802)([2-9].{6})$/
  def area_name, do: "Vermont"
  def area_type, do: "state"
  def area_abbreviation, do: "VT"

  matcher(["1802"])
end
