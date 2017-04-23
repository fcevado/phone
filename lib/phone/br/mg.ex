defmodule Phone.BR.MG do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(3[1-5|78])([2-5|89].{7}|9[89].{7}|7[78].{6})$/
  def area_name, do: "Minas Gerais"
  def area_type, do: "state"
  def area_abbreviation, do: "MG"

  matcher ["5531", "5532", "5533", "5534", "5535", "5537", "5538"]
end
