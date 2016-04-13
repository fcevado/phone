defmodule Phone.NANP.US.SD do
  use Helper.Area
  field :regex, ~r/^(1)(605)([2-9].{6})/
  field :area_name, "South Dakota"
  field :area_type, "state"
  field :area_abbreviation, "SD"
  builder
end
