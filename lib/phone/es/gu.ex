defmodule Phone.ES.GU do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(949|849)(.{6})/
  def area_name, do: "Guadalajara"
  def area_type, do: "province"
  def area_abbreviation, do: "GU"

  matcher(["34949", "34849"])
end
