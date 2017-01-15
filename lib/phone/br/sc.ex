defmodule Phone.BR.SC do
  use Helper.Area
  field :regex, ~r/^(55)(4[7-9])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Santa Catarina"
  field :area_type, "state"
  field :area_abbreviation, "SC"
  builder()
end
