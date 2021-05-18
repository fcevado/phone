defmodule Phone.ES.SS do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(943|843)(.{6})$/
  def area_name, do: "Guipúzcoa"
  def area_type, do: "province"
  def area_abbreviation, do: "SS"

  matcher(["34943", "34843"])
end
