defmodule Phone.NANP.US.ND do
  use Helper.Area
  field :regex, ~r/^(1)(701)([2-9].{6})/
  field :area_name, "North Dakota"
  field :area_type, "state"
  field :area_abbreviation, "ND"
  builder
end
