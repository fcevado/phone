defmodule Phone.ES.AV do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(920|820)(.{6})$/
  def area_name, do: "Ávila"
  def area_type, do: "province"
  def area_abbreviation, do: "AV"

  matcher(["34920", "34820"])
end
