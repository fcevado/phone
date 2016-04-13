defmodule Phone.NANP.US.WY do
  use Helper.Area
  field :regex, ~r/^(1)(307)([2-9].{6})/
  field :area_name, "Wyoming"
  field :area_type, "state"
  field :area_abbreviation, "WY"
  builder
end
