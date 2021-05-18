defmodule Phone.ES.J do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(953|853)(.{6})$/
  def area_name, do: "Jaen"
  def area_type, do: "province"
  def area_abbreviation, do: "J"

  matcher(["34953", "34853"])
end
