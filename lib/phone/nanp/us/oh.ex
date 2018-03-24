defmodule Phone.NANP.US.OH do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(216|220|234|330|380|419|440|513|567|614|740|937)([2-9].{6})$/
  def area_name, do: "Ohio"
  def area_type, do: "state"
  def area_abbreviation, do: "OH"

  matcher([
    "1216",
    "1220",
    "1234",
    "1330",
    "1380",
    "1419",
    "1440",
    "1513",
    "1567",
    "1614",
    "1740",
    "1937"
  ])
end
