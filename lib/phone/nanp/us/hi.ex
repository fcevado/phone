defmodule Phone.NANP.US.HI do
  use Helper.Area
  field :regex, ~r/^(1)(808)([2-9].{6})$/
  field :area_name, "Hawaii"
  field :area_type, "state"
  field :area_abbreviation, "HI"
  builder()
end
