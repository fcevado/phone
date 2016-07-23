defmodule Phone.BR.BA do
  use Helper.Area
  field :regex, ~r/^(55)(7[1|3-5|7])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Bahia"
  field :area_type, "state"
  field :area_abbreviation, "BA"
  builder
end
