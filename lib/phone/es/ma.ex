defmodule Phone.ES.MA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(95[1-2]|85[1-2])(.{6})/
  def area_name, do: "Málaga"
  def area_type, do: "province"
  def area_abbreviation, do: "MA"

  matcher(["34951", "34952", "34851", "34852"])
end
