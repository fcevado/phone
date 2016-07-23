defmodule Phone.BR.ES do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Espírito Santo"
  field :area_type, "state"
  field :area_abbreviation, "ES"
  builder
end
