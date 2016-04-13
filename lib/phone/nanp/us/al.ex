defmodule Phone.NANP.US.AL do
  use Helper.Area
  field :regex, ~r/^(1)(205|251|256|334)([2-9].{6})/
  field :area_name, "Alabama"
  field :area_type, "state"
  field :area_abbreviation, "AL"
  builder
end
