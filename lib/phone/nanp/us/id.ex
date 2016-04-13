defmodule Phone.NANP.US.ID do
  use Helper.Area
  field :regex, ~r/^(1)(208)([2-9].{6})/
  field :area_name, "Idaho"
  field :area_type, "state"
  field :area_abbreviation, "ID"
  builder
end
