defmodule Phone.BR.RN do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Rio Grande do Norte"
  field :area_type, "state"
  field :area_abbreviation, "RN"
  builder
end
