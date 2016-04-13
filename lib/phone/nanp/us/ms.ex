defmodule Phone.NANP.US.MS do
  use Helper.Area
  field :regex, ~r/^(1)(228|601|662|769)([2-9].{6})/
  field :area_name, "Mississippi"
  field :area_type, "state"
  field :area_abbreviation, "MS"
  builder
end
