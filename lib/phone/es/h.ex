defmodule Phone.ES.H do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(959|859)(.{6})/
  def area_name, do: "Huelva"
  def area_type, do: "province"
  def area_abbreviation, do: "H"

  matcher(["34959", "34859"])
end
