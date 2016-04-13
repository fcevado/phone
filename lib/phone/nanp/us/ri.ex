defmodule Phone.NANP.US.RI do
  use Helper.Area
  field :regex, ~r/^(1)(401)([2-9].{6})/
  field :area_name, "Rhode Island"
  field :area_type, "state"
  field :area_abbreviation, "RI"
  builder
end
