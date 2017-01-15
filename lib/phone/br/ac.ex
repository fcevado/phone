defmodule Phone.BR.AC do
  use Helper.Area
  field :regex, ~r/^(55)(68)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Acre"
  field :area_type, "state"
  field :area_abbreviation, "AC"
  builder()
end
