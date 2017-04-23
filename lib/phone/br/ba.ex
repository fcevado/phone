defmodule Phone.BR.BA do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(7[1|3-5|7])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Bahia"
  def area_type, do: "state"
  def area_abbreviation, do: "BA"

  matcher ["5571", "5573", "5574", "5575", "5577"]
end
