defmodule Phone.NANP.US.VA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(276|434|540|571|703|757|804|826|948)([2-9].{6})$/
  def area_name, do: "Virginia"
  def area_type, do: "state"
  def area_abbreviation, do: "VA"

  matcher(["1276", "1434", "1540", "1571", "1703", "1757", "1804", "1826", "1948"])
end
