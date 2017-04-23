defmodule Phone.NANP.CA.SK do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(306|639)([2-9].{6})$/
  def area_name, do: "Saskatchewan"
  def area_type, do: "province"
  def area_abbreviation, do: "SK"

  matcher ["1306", "1639"]
end
