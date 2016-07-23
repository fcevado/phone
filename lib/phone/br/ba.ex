defmodule Phone.BR.BA do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Bahia"
  field :area_type, "state"
  field :area_abbreviation, "BA"
  builder
end
