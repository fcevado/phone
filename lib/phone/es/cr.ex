defmodule Phone.ES.CR do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(926|826)(.{6})$/
  def area_name, do: "Ciudad Real"
  def area_type, do: "province"
  def area_abbreviation, do: "CR"

  matcher(["34926", "34826"])
end
