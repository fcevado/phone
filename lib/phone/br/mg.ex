defmodule Phone.BR.MG do
  use Helper.Area
  field :regex, ~r/^(55)(3[1-5|78])([2-5|89].{7}|9[89].{7}|7[78].{6})$/
  field :area_name, "Minas Gerais"
  field :area_type, "state"
  field :area_abbreviation, "MG"
  builder()
end
