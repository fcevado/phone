defmodule Phone.BR.GO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(6[24])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Goiás"
  def area_type, do: "state"
  def area_abbreviation, do: "GO"

  matcher(["5562", "5564"])
end
