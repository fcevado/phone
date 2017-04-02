defmodule Phone.NANP.US.KY do
  use Helper.Area

  def regex, do: ~r/^(1)(270|364|502|606|859)([2-9].{6})$/
  def area_name, do: "Kentucky"
  def area_type, do: "state"
  def area_abbreviation, do: "KY"

  matcher ["1270", "1364", "1502", "1606", "1859"]
end
