defmodule Phone.NANP.US.NC do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(252|336|704|743|828|910|919|980|984)([2-9].{6})$/
  def area_name, do: "North Carolina"
  def area_type, do: "state"
  def area_abbreviation, do: "NC"

  matcher(["1252", "1336", "1704", "1743", "1828", "1910", "1919", "1980", "1984"])
end
