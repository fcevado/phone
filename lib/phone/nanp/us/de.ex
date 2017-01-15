defmodule Phone.NANP.US.DE do
  use Helper.Area
  field :regex, ~r/^(1)(302)([2-9].{6})$/
  field :area_name, "Delaware"
  field :area_type, "state"
  field :area_abbreviation, "DE"
  builder()
end
