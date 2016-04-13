defmodule Phone.NANP.US.NE do
  use Helper.Area
  field :regex, ~r/^(1)(308|402|531)([2-9].{6})/
  field :area_name, "Nebraska"
  field :area_type, "state"
  field :area_abbreviation, "NE"
  builder
end
