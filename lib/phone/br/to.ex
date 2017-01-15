defmodule Phone.BR.TO do
  use Helper.Area
  field :regex, ~r/^(55)(63)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Tocantins"
  field :area_type, "state"
  field :area_abbreviation, "TO"
  builder()
end
