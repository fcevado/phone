defmodule Phone.ES.P do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(979|879)(.{6})/
  def area_name, do: "Palencia"
  def area_type, do: "province"
  def area_abbreviation, do: "P"

  matcher(["34979", "34879"])
end