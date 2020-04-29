defmodule Phone.ES.Z do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(976|876)(.{6})/
  def area_name, do: "Zaragoza"
  def area_type, do: "province"
  def area_abbreviation, do: "Z"

  matcher(["34976", "34876"])
end
