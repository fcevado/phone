defmodule Phone.ES.LO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(941|841)(.{6})/
  def area_name, do: "La Rioja"
  def area_type, do: "province"
  def area_abbreviation, do: "LO"

  matcher(["34941", "34841"])
end
