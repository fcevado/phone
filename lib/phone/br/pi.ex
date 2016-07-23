defmodule Phone.BR.PI do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Piauí"
  field :area_type, "state"
  field :area_abbreviation, "PI"
  builder
end
