defmodule Phone.BR.PB do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Paraíba"
  field :area_type, "state"
  field :area_abbreviation, "PB"
  builder
end
