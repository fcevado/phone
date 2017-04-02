defmodule Phone.BR.RJ do
  use Helper.Area

  def regex, do: ~r/^(55)(2[124])([2-5|89].{7}|9[89].{7}|7[078].{6})$/
  def area_name, do: "Rio de Janeiro"
  def area_type, do: "state"
  def area_abbreviation, do: "RJ"

  matcher ["5521", "5522", "5524"]
end
