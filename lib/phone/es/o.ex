defmodule Phone.ES.O do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(98[4-5]|88[4-5])(.{6})/
  def area_name, do: "Asturias"
  def area_type, do: "province"
  def area_abbreviation, do: "O"

  matcher(["34984", "34985", "34884", "34885"])
end