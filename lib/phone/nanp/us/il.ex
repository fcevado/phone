defmodule Phone.NANP.US.IL do
  use Helper.Area
  field :regex, ~r/^(1)(217|224|309|312|331|618|630|708|773|779|815|847|872)([2-9].{6})$/
  field :area_name, "Illinois"
  field :area_type, "state"
  field :area_abbreviation, "IL"
  builder
end
