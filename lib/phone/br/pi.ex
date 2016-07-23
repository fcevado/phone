defmodule Phone.BR.PI do
  use Helper.Area
  field :regex, ~r/^(55)(8[69])([2-5|89].{7}|9[89].{7})/
  field :area_name, "Piauí"
  field :area_type, "state"
  field :area_abbreviation, "PI"
  builder
end
