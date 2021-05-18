defmodule Phone.ES.S do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(942|842)(.{6})$/
  def area_name, do: "Cantabria"
  def area_type, do: "province"
  def area_abbreviation, do: "S"

  matcher(["34942", "34842"])
end
