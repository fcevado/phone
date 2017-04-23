defmodule Phone.BR.MT do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(6[56])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Mato Grosso"
  def area_type, do: "state"
  def area_abbreviation, do: "MT"

  matcher ["5565", "5566"]
end
