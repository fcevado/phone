defmodule Phone.BR.SE do
  use Helper.Area
  field :regex, ~r/^(55)(79)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Sergipe"
  field :area_type, "state"
  field :area_abbreviation, "SE"
  builder()
end
