defmodule Phone.ES.VI do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(945|845)(.{6})/
  def area_name, do: "Álava"
  def area_type, do: "province"
  def area_abbreviation, do: "VI"

  matcher(["34945", "34845"])
end