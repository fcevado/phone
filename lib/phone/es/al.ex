defmodule Phone.ES.AL do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(950|850)(.{6})/
  def area_name, do: "Almería"
  def area_type, do: "province"
  def area_abbreviation, do: "AL"

  matcher(["34950", "34850"])
end
