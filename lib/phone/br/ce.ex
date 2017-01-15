defmodule Phone.BR.CE do
  use Helper.Area
  field :regex, ~r/^(55)(8[58])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Ceará"
  field :area_type, "state"
  field :area_abbreviation, "CE"
  builder()
end
