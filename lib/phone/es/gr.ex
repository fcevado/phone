defmodule Phone.ES.GR do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(958|858)(.{6})/
  def area_name, do: "Granada"
  def area_type, do: "province"
  def area_abbreviation, do: "GR"

  matcher(["34958", "34858"])
end
