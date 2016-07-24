defmodule Phone.NANP.US.CT do
  use Helper.Area
  field :regex, ~r/^(1)(203|860)([2-9].{6})$/
  field :area_name, "Connecticut"
  field :area_type, "state"
  field :area_abbreviation, "CT"
  builder
end
