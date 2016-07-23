defmodule Phone.BR.PR do
  use Helper.Area
    field :regex, ~r/^(55)(4[1-6])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Paraná"
  field :area_type, "state"
  field :area_abbreviation, "PR"
  builder
end
