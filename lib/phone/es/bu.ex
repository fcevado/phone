defmodule Phone.ES.BU do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(947|847)(.{6})/
  def area_name, do: "Burgos"
  def area_type, do: "province"
  def area_abbreviation, do: "BU"

  matcher(["34947", "34847"])
end
