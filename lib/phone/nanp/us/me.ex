defmodule Phone.NANP.US.ME do
  use Helper.Area
  field :regex, ~r/^(1)(207)([2-9].{6})$/
  field :area_name, "Maine"
  field :area_type, "state"
  field :area_abbreviation, "ME"
  builder
end
