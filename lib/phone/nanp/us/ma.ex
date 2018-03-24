defmodule Phone.NANP.US.MA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(339|351|413|508|617|774|781|857|978)([2-9].{6})$/
  def area_name, do: "Massachusetts"
  def area_type, do: "state"
  def area_abbreviation, do: "MA"

  matcher(["1339", "1351", "1413", "1508", "1617", "1774", "1781", "1857", "1978"])
end
