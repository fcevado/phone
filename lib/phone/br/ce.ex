defmodule Phone.BR.CE do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Ceará"
  field :area_type, "state"
  field :area_abbreviation, "CE"
  builder
end
