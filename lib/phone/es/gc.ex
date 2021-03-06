defmodule Phone.ES.GC do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(928|828)(.{6})$/
  def area_name, do: "Las Palmas"
  def area_type, do: "province"
  def area_abbreviation, do: "GC"

  matcher(["34928", "34828"])
end
