defmodule Phone.BR.DF do
  use Helper.Area
  field :regex, ~r/^(55)(61)([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Distrito Federal"
  field :area_type, "district"
  field :area_abbreviation, "DF"
  builder()
end
