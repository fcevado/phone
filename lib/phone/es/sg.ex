defmodule Phone.ES.SG do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(921|821)(.{6})$/
  def area_name, do: "Segovia"
  def area_type, do: "province"
  def area_abbreviation, do: "SG"

  matcher(["34921", "34821"])
end
