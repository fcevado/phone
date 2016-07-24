defmodule Phone.NANP.US.NH do
  use Helper.Area
  field :regex, ~r/^(1)(603)([2-9].{6})$/
  field :area_name, "New Hampshire"
  field :area_type, "state"
  field :area_abbreviation, "NH"
  builder
end
