defmodule Phone.BR.RJ do
  use Helper.Area
  field :regex, ~r/^(55)(2[124])([2-5|89].{7}|9[89].{7}|7[078].{6})$/
  field :area_name, "Rio de Janeiro"
  field :area_type, "state"
  field :area_abbreviation, "RJ"
  builder()
end
