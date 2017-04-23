defmodule Phone.NANP.US.RI do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(401)([2-9].{6})$/
  def area_name, do: "Rhode Island"
  def area_type, do: "state"
  def area_abbreviation, do: "RI"

  matcher ["1401"]
end
