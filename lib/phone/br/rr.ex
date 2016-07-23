defmodule Phone.BR.RR do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Roraima"
  field :area_type, "state"
  field :area_abbreviation, "RR"
  builder
end
