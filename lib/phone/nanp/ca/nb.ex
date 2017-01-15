defmodule Phone.NANP.CA.NB do
  use Helper.Area
  field :regex, ~r/^(1)(506)([2-9].{6})$/
  field :area_name, "New Brunswick"
  field :area_type, "province"
  field :area_abbreviation, "NB"
  builder()
end
