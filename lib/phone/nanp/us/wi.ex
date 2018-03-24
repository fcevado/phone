defmodule Phone.NANP.US.WI do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(262|414|534|608|715|920)([2-9].{6})$/
  def area_name, do: "Wisconsin"
  def area_type, do: "state"
  def area_abbreviation, do: "WI"

  matcher(["1262", "1414", "1534", "1608", "1715", "1920"])
end
