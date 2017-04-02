defmodule Phone.NANP.US.MT do
  use Helper.Area

  def regex, do: ~r/^(1)(406)([2-9].{6})$/
  def area_name, do: "Montana"
  def area_type, do: "state"
  def area_abbreviation, do: "MT"

  matcher ["1406"]
end
