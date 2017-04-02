defmodule Phone.NANP.US.IA do
  use Helper.Area

  def regex, do: ~r/^(1)(319|515|563|641|712)([2-9].{6})$/
  def area_name, do: "Iowa"
  def area_type, do: "state"
  def area_abbreviation, do: "IA"

  matcher ["1319", "1515", "1563", "1641", "1712"]
end
