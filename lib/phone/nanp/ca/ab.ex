defmodule Phone.NANP.CA.AB do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(403|780|587|825)([2-9].{6})$/
  def area_name, do: "Alberta"
  def area_type, do: "province"
  def area_abbreviation, do: "AB"

  matcher ["1403", "1780", "1587", "1825"]
end
