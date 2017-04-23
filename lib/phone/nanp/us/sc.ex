defmodule Phone.NANP.US.SC do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(803|843|854|864)([2-9].{6})$/
  def area_name, do: "South Carolina"
  def area_type, do: "state"
  def area_abbreviation, do: "SC"

  matcher ["1803", "1843", "1854", "1864"]
end
