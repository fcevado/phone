defmodule Phone.NANP.US.WV do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(304|681)([2-9].{6})$/
  def area_name, do: "West Virginia"
  def area_type, do: "state"
  def area_abbreviation, do: "WV"

  matcher ["1304", "1681"]
end
