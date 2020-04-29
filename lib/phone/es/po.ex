defmodule Phone.ES.PO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(986|886)(.{6})/
  def area_name, do: "Pontevedra"
  def area_type, do: "province"
  def area_abbreviation, do: "PO"

  matcher(["34986", "34886"])
end
