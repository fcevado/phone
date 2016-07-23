defmodule Phone.BR.PA do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Pará"
  field :area_type, "state"
  field :area_abbreviation, "PA"
  builder
end
