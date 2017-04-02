defmodule Phone.NANP.US.KS do
  use Helper.Area

  def regex, do: ~r/^(1)(316|620|785|913)([2-9].{6})$/
  def area_name, do: "Kansas"
  def area_type, do: "state"
  def area_abbreviation, do: "KS"

  matcher ["1316", "1620", "1785", "1913"]
end
