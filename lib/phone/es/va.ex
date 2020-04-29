defmodule Phone.ES.VA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(983|883)(.{6})/
  def area_name, do: "Valladolid"
  def area_type, do: "province"
  def area_abbreviation, do: "VA"

  matcher(["34983", "34883"])
end