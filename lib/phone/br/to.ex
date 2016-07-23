defmodule Phone.BR.TO do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Tocantins"
  field :area_type, "state"
  field :area_abbreviation, "TO"
  builder
end
