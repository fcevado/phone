defmodule Phone.NANP.US.NM do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(5[0|7]5)([2-9].{6})$/
  def area_name, do: "New Mexico"
  def area_type, do: "state"
  def area_abbreviation, do: "NM"

  matcher(["1505", "1575"])
end
