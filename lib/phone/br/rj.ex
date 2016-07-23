defmodule Phone.BR.RJ do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Rio de Janeiro"
  field :area_type, "state"
  field :area_abbreviation, "RJ"
  builder
end
