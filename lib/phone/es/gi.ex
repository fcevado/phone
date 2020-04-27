defmodule Phone.ES.GI do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(972|872)(.{6})/
  def area_name, do: "Girona"
  def area_type, do: "province"
  def area_abbreviation, do: "GI"

  matcher(["34972", "34872"])
end
