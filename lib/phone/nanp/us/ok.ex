defmodule Phone.NANP.US.OK do
  use Helper.Area

  def regex, do: ~r/^(1)(405|539|580|918)([2-9].{6})$/
  def area_name, do: "Oklahoma"
  def area_type, do: "state"
  def area_abbreviation, do: "OK"

  matcher ["1405", "1539", "1580", "1918"]
end
