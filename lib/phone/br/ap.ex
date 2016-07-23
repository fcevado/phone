defmodule Phone.BR.AP do
  use Helper.Area
  field :regex, ~r/^(55)(96)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Amapá"
  field :area_type, "state"
  field :area_abbreviation, "AP"
  builder
end
