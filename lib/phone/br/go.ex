defmodule Phone.BR.GO do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Goiás"
  field :area_type, "state"
  field :area_abbreviation, "GO"
  builder
end
