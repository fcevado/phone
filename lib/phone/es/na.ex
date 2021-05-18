defmodule Phone.ES.NA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(948|848)(.{6})$/
  def area_name, do: "Navarra"
  def area_type, do: "province"
  def area_abbreviation, do: "NA"

  matcher(["34948", "34848"])
end
