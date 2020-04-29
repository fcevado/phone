defmodule Phone.ES.SE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(95[4-5]|85[4-5])(.{6})/
  def area_name, do: "Sevilla"
  def area_type, do: "province"
  def area_abbreviation, do: "SE"

  matcher(["34954", "34955", "34854", "34855"])
end
