defmodule Phone.BR.MS do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Mato Grosso do Sul"
  field :area_type, "state"
  field :area_abbreviation, "MS"
  builder
end
