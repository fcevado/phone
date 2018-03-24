defmodule Phone.NANP.US.WA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(206|253|360|425|509|564)([2-9].{6})$/
  def area_name, do: "Washington"
  def area_type, do: "state"
  def area_abbreviation, do: "WA"

  matcher(["1206", "1253", "1360", "1425", "1509", "1564"])
end
