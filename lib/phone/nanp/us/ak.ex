defmodule Phone.NANP.US.AK do
  use Helper.Area
  field :regex, ~r/^(1)(907)([2-9].{6})$/
  field :area_name, "Alaska"
  field :area_type, "state"
  field :area_abbreviation, "AK"
  builder
end
