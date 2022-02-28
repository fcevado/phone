defmodule Phone.BR.PE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(8[17])([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Pernambuco"
  def area_type, do: "state"
  def area_abbreviation, do: "PE"

  matcher(["5581", "5587"])
end
