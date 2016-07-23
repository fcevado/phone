defmodule Phone.BR.DF do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Distrito Federal"
  field :area_type, "district"
  field :area_abbreviation, "DF"
  builder
end
