defmodule Phone.NANP.CA.SK do
  use Helper.Area
  field :regex, ~r/^(1)(306|639)([2-9].{6})$/
  field :area_name, "Saskatchewan"
  field :area_type, "province"
  field :area_abbreviation, "SK"
  builder()
end
