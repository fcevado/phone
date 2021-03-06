defmodule Phone.ES.TE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(978|878)(.{6})$/
  def area_name, do: "Teruel"
  def area_type, do: "province"
  def area_abbreviation, do: "TE"

  matcher(["34978", "34878"])
end
