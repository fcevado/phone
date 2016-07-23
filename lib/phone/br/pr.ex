defmodule Phone.BR.PR do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Paraná"
  field :area_type, "state"
  field :area_abbreviation, "PR"
  builder
end
