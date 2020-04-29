defmodule Phone.ES.MU do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(968|868)(.{6})/
  def area_name, do: "Murcia"
  def area_type, do: "province"
  def area_abbreviation, do: "MU"

  matcher(["34968", "34868"])
end
