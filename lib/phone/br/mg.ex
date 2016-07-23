defmodule Phone.BR.MG do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Minas Gerais"
  field :area_type, "state"
  field :area_abbreviation, "MG"
  builder
end
