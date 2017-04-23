defmodule Phone.NANP.US.ND do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(701)([2-9].{6})$/
  def area_name, do: "North Dakota"
  def area_type, do: "state"
  def area_abbreviation, do: "ND"

  matcher ["1701"]
end
