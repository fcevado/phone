defmodule Phone.NANP.US.AL do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(205|251|256|334|659|938)([2-9].{6})$/
  def area_name, do: "Alabama"
  def area_type, do: "state"
  def area_abbreviation, do: "AL"

  matcher(["1205", "1251", "1256", "1334", "1659", "1938"])
end
