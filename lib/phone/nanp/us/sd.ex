defmodule Phone.NANP.US.SD do
  use Helper.Area

  def regex, do: ~r/^(1)(605)([2-9].{6})$/
  def area_name, do: "South Dakota"
  def area_type, do: "state"
  def area_abbreviation, do: "SD"

  matcher ["1605"]
end
