defmodule Phone.NANP.US.OK do
  use Helper.Area
  field :regex, ~r/^(1)(405|539|580|918)([2-9].{6})/
  field :area_name, "Oklahoma"
  field :area_type, "state"
  field :area_abbreviation, "OK"
  builder
end
