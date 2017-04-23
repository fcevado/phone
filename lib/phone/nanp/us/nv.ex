defmodule Phone.NANP.US.NV do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(702|7[2|7]5)([2-9].{6})$/
  def area_name, do: "Nevada"
  def area_type, do: "state"
  def area_abbreviation, do: "NV"

  matcher ["1702", "1725", "1775"]
end
