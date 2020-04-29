defmodule Phone.ES.OR do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(988|888)(.{6})/
  def area_name, do: "Ourense"
  def area_type, do: "province"
  def area_abbreviation, do: "OR"

  matcher(["34988", "34888"])
end