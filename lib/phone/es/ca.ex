defmodule Phone.ES.CA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(956|856)(.{6})$/
  def area_name, do: "Cádiz"
  def area_type, do: "province"
  def area_abbreviation, do: "CA"

  matcher(["34956", "34856"])
end
