defmodule Phone.ES.SO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(975|875)(.{6})/
  def area_name, do: "Soria"
  def area_type, do: "province"
  def area_abbreviation, do: "SO"

  matcher(["34975", "34875"])
end
