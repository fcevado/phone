defmodule Phone.NANP.CA.NL do
  use Helper.Area
  field :regex, ~r/^(1)(709)([2-9].{6})$/
  field :area_name, "Newfoundland and Labrador"
  field :area_type, "province"
  field :area_abbreviation, "NL"
  builder()
end
