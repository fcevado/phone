defmodule Phone.ES.CS do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(964|864)(.{6})/
  def area_name, do: "Castellón"
  def area_type, do: "province"
  def area_abbreviation, do: "CS"

  matcher(["34964", "34864"])
end
