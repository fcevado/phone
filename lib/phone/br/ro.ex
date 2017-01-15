defmodule Phone.BR.RO do
  use Helper.Area
  field :regex, ~r/^(55)(69)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Rondônia"
  field :area_type, "state"
  field :area_abbreviation, "RO"
  builder()
end
