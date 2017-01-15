defmodule Phone.BR.GO do
  use Helper.Area
  field :regex, ~r/^(55)(6[24])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Goiás"
  field :area_type, "state"
  field :area_abbreviation, "GO"
  builder()
end
