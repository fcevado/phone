defmodule Phone.ES.CU do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(969|869)(.{6})$/
  def area_name, do: "Cuenca"
  def area_type, do: "province"
  def area_abbreviation, do: "CU"

  matcher(["34969", "34869"])
end
