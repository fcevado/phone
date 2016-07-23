defmodule Phone.BR.AL do
  use Helper.Area
  field :regex, ~r/^(55)(82)([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Alagoas"
  field :area_type, "state"
  field :area_abbreviation, "AL"
  builder
end
