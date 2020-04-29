defmodule Phone.ES.CO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(957|857)(.{6})/
  def area_name, do: "Córdoba"
  def area_type, do: "province"
  def area_abbreviation, do: "CO"

  matcher(["34957", "34857"])
end
