defmodule Phone.ES.L do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(973|873)(.{6})/
  def area_name, do: "Lleida"
  def area_type, do: "province"
  def area_abbreviation, do: "L"

  matcher(["34973", "34873"])
end
