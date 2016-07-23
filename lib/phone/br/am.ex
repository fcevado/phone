defmodule Phone.BR.AM do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Amazonas"
  field :area_type, "state"
  field :area_abbreviation, "AM"
  builder
end
