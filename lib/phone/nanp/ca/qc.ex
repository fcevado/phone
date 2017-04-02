defmodule Phone.NANP.CA.QC do
  use Helper.Area

  def regex, do: ~r/^(1)(418|438|450|514|579|581|819|873)([2-9].{6})$/
  def area_name, do: "Quebec"
  def area_type, do: "province"
  def area_abbreviation, do: "QC"

  matcher ["1418", "1438", "1450", "1514", "1579", "1581", "1819", "1873"]
end
