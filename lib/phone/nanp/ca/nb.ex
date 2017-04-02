defmodule Phone.NANP.CA.NB do
  use Helper.Area

  def regex, do: ~r/^(1)(506)([2-9].{6})$/
  def area_name, do: "New Brunswick"
  def area_type, do: "province"
  def area_abbreviation, do: "NB"

  matcher ["1506"]
end
