defmodule Phone.NANP.US.LA do
  use Helper.Area

  def regex, do: ~r/^(1)(225|318|337|504|985)([2-9].{6})$/
  def area_name, do: "Louisiana"
  def area_type, do: "state"
  def area_abbreviation, do: "LA"

  matcher ["1225", "1318", "1337", "1504", "1985"]
end
