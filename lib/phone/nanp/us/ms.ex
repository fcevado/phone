defmodule Phone.NANP.US.MS do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(228|601|662|769)([2-9].{6})$/
  def area_name, do: "Mississippi"
  def area_type, do: "state"
  def area_abbreviation, do: "MS"

  matcher ["1228", "1601", "1662", "1769"]
end
