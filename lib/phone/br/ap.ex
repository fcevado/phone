defmodule Phone.BR.AP do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Amapá"
  field :area_type, "state"
  field :area_abbreviation, "AP"
  builder
end
