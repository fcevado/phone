defmodule Phone.ES.PM do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(971|871)(.{6})$/
  def area_name, do: "Illes Balears"
  def area_type, do: "province"
  def area_abbreviation, do: "PM"

  matcher(["34971", "34871"])
end
