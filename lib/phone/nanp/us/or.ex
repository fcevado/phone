defmodule Phone.NANP.US.OR do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(458|503|541|971)([2-9].{6})$/
  def area_name, do: "Oregon"
  def area_type, do: "state"
  def area_abbreviation, do: "OR"

  matcher ["1458", "1503", "1541", "1971"]
end
