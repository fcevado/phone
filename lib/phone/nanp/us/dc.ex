defmodule Phone.NANP.US.DC do
  use Helper.Area

  def regex, do: ~r/^(1)(202)([2-9].{6})$/
  def area_name, do: "Washington, D.C."
  def area_type, do: "state"
  def area_abbreviation, do: "DC"

  matcher ["1202"]
end
