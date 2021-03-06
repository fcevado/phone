defmodule Phone.ES.TF do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(922|822)(.{6})$/
  def area_name, do: "Santa Cruz de Tenerife"
  def area_type, do: "province"
  def area_abbreviation, do: "TF"

  matcher(["34922", "34822"])
end
