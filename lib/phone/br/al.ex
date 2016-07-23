defmodule Phone.BR.ALdo
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Alagoas"
  field :area_type, "state"
  field :area_abbreviation, "AL"
  builder
end
