defmodule Phone.NANP.CA.Territory do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(867)([2-9].{6})$/
  def area_name, do: ["Northwest Territories", "Nunavut", "Yukon"]
  def area_type, do: "territories"
  def area_abbreviation, do: ["NT", "NU", "YT"]

  matcher(["1867"])
end
