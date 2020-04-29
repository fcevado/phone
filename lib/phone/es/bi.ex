defmodule Phone.ES.BI do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(944|946|844|846)(.{6})/
  def area_name, do: "Bizkaia"
  def area_type, do: "province"
  def area_abbreviation, do: "BI"

  matcher(["34944", "34946", "34844", "34846"])
end
