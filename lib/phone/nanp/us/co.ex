defmodule Phone.NANP.US.CO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(303|719|720|970)([2-9].{6})$/
  def area_name, do: "Colorado"
  def area_type, do: "state"
  def area_abbreviation, do: "CO"

  matcher ["1303", "1719", "1720", "1970"]
end
