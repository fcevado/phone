defmodule Phone.NANP.CA.NL do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(709)([2-9].{6})$/
  def area_name, do: "Newfoundland and Labrador"
  def area_type, do: "province"
  def area_abbreviation, do: "NL"

  matcher(["1709"])
end
