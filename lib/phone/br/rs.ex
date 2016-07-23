defmodule Phone.BR.RS do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Rio Grande do Sul"
  field :area_type, "state"
  field :area_abbreviation, "RS"
  builder
end
