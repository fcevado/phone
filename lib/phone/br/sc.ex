defmodule Phone.BR.SC do
  use Helper.Area
  field :regex, ~r/^(55)()()/
  field :area_name, "Santa Catarina"
  field :area_type, "state"
  field :area_abbreviation, "SC"
  builder
end
