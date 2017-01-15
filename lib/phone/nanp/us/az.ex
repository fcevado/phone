defmodule Phone.NANP.US.AZ do
  use Helper.Area
  field :regex, ~r/^(1)(480|520|602|623|928)([2-9].{6})$/
  field :area_name, "Arizona"
  field :area_type, "state"
  field :area_abbreviation, "AZ"
  builder()
end
