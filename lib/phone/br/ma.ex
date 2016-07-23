defmodule Phone.BR.MA do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Maranhão"
  field :area_type, "state"
  field :area_abbreviation, "MA"
  builder
end
