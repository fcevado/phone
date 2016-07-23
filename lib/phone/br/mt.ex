defmodule Phone.BR.MT do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Mato Grosso"
  field :area_type, "state"
  field :area_abbreviation, "MT"
  builder
end
