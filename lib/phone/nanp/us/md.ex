defmodule Phone.NANP.US.MD do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(240|301|410|443|667)([2-9].{6})$/
  def area_name, do: "Maryland"
  def area_type, do: "state"
  def area_abbreviation, do: "MD"

  matcher(["1240", "1301", "1410", "1443", "1667"])
end
