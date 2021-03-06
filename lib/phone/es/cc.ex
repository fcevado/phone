defmodule Phone.ES.CC do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(927|827)(.{6})$/
  def area_name, do: "Cáceres"
  def area_type, do: "province"
  def area_abbreviation, do: "CC"

  matcher(["34927", "34827"])
end
