defmodule Phone.NANP.CA.BC do
  use Helper.Area

  def regex, do: ~r/^(1)(604|778|236|250)([2-9].{6})$/
  def area_name, do: "British Columbia"
  def area_type, do: "province"
  def area_abbreviation, do: "BC"

  matcher ["1604", "1778", "1236", "1250"]
end
