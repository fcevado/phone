defmodule Phone.NANP.US.WY do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(307)([2-9].{6})$/
  def area_name, do: "Wyoming"
  def area_type, do: "state"
  def area_abbreviation, do: "WY"

  matcher(["1307"])
end
