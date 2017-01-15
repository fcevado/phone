defmodule Phone.BR.AM do
  use Helper.Area
  field :regex, ~r/^(55)(9[27])([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Amazonas"
  field :area_type, "state"
  field :area_abbreviation, "AM"
  builder()
end
