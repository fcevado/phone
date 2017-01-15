defmodule Phone.BR.PA do
  use Helper.Area
  field :regex, ~r/^(55)(9[134])([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Pará"
  field :area_type, "state"
  field :area_abbreviation, "PA"
  builder()
end
