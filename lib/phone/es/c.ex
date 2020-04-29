defmodule Phone.ES.C do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(981|881)(.{6})/
  def area_name, do: "A Coruña"
  def area_type, do: "province"
  def area_abbreviation, do: "C"

  matcher(["34981", "34881"])
end
