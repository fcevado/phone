defmodule Phone.ES.LU do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(982|882)(.{6})$/
  def area_name, do: "Lugo"
  def area_type, do: "province"
  def area_abbreviation, do: "LU"

  matcher(["34982", "34882"])
end
