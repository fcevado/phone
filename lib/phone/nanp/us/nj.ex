defmodule Phone.NANP.US.NJ do
  use Helper.Area

  def regex, do: ~r/^(1)(201|551|609|732|848|856|862|908|973)([2-9].{6})$/
  def area_name, do: "New Jersey"
  def area_type, do: "state"
  def area_abbreviation, do: "NJ"

  matcher ["1201", "1551", "1609", "1732", "1848", "1856", "1862", "1908", "1973"]
end
