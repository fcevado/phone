defmodule Phone.BR.ES do
  use Helper.Area
  field :regex, ~r/^(55)(2[78])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Espírito Santo"
  field :area_type, "state"
  field :area_abbreviation, "ES"
  builder
end
