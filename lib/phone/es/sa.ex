defmodule Phone.ES.SA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(923|823)(.{6})$/
  def area_name, do: "Salamanca"
  def area_type, do: "province"
  def area_abbreviation, do: "SA"

  matcher(["34923", "34823"])
end
