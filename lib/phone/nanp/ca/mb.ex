defmodule Phone.NANP.CA.MB do
  use Helper.Area

  def regex, do: ~r/^(1)(204|431)([2-9].{6})$/
  def area_name, do: "Manitoba"
  def area_type, do: "province"
  def area_abbreviation, do: "MB"

  matcher ["1204", "1431"]
end
