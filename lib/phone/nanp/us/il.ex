defmodule Phone.NANP.US.IL do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(217|224|309|312|331|618|630|708|773|779|815|847|872)([2-9].{6})$/
  def area_name, do: "Illinois"
  def area_type, do: "state"
  def area_abbreviation, do: "IL"

  matcher([
    "1217",
    "1224",
    "1309",
    "1312",
    "1331",
    "1618",
    "1630",
    "1708",
    "1773",
    "1779",
    "1815",
    "1847",
    "1872"
  ])
end
