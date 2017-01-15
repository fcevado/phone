defmodule Phone.BR.RN do
  use Helper.Area
  field :regex, ~r/^(55)(84)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Rio Grande do Norte"
  field :area_type, "state"
  field :area_abbreviation, "RN"
  builder()
end
