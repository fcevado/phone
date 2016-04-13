defmodule Phone.NANP.US.DC do
  use Helper.Area
  field :regex, ~r/^(1)(202)([2-9].{6})/
  field :area_name, "Washington, D.C."
  field :area_type, "state"
  field :area_abbreviation, "DC"
  builder
end
