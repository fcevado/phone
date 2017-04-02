defmodule Phone.NANP.US.MO do
  use Helper.Area

  def regex, do: ~r/^(1)(314|417|573|636|660|816)([2-9].{6})$/
  def area_name, do: "Missouri"
  def area_type, do: "state"
  def area_abbreviation, do: "MO"

  matcher ["1314", "1417", "1573", "1636", "1660", "1816"]
end
