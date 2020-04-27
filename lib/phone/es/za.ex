defmodule Phone.ES.ZA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(980|880)(.{6})/
  def area_name, do: "Zamora"
  def area_type, do: "province"
  def area_abbreviation, do: "ZA"

  matcher(["34980", "34880"])
end