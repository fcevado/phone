defmodule Phone.NANP.US.IN do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(219|260|317|463|574|765|812|930)([2-9].{6})$/
  def area_name, do: "Indiana"
  def area_type, do: "state"
  def area_abbreviation, do: "IN"

  matcher ["1219", "1260", "1317", "1463", "1574", "1765", "1812", "1930"]
end
