defmodule Phone.ES.HU do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(974|874)(.{6})/
  def area_name, do: "Huesca"
  def area_type, do: "province"
  def area_abbreviation, do: "HU"

  matcher(["34974", "34874"])
end
