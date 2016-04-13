defmodule Phone.NANP.US.VT do
  use Helper.Area
  field :regex, ~r/^(1)(802)([2-9].{6})/
  field :area_name, "Vermont"
  field :area_type, "state"
  field :area_abbreviation, "VT"
  builder
end
