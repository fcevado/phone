defmodule Phone.ES.BA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(924|824)(.{6})$/
  def area_name, do: "Badajoz"
  def area_type, do: "province"
  def area_abbreviation, do: "BA"

  matcher(["34924", "34824"])
end
