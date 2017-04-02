defmodule Phone.NANP.US.MN do
  use Helper.Area

  def regex, do: ~r/^(1)(218|320|507|612|651|763|952)([2-9].{6})$/
  def area_name, do: "Minnesota"
  def area_type, do: "state"
  def area_abbreviation, do: "MN"

  matcher ["1218", "1320", "1507", "1612", "1651", "1763", "1952"]
end
