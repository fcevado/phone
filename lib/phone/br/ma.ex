defmodule Phone.BR.MA do
  use Helper.Area
  field :regex, ~r/^(55)(9[98])([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Maranhão"
  field :area_type, "state"
  field :area_abbreviation, "MA"
  builder
end
