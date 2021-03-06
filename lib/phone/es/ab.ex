defmodule Phone.ES.AB do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(967|867)(.{6})$/
  def area_name, do: "Albacete"
  def area_type, do: "province"
  def area_abbreviation, do: "AB"

  matcher(["34967", "34867"])
end
