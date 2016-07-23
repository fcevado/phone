defmodule Phone.NANP.US.WV do
  use Helper.Area
  field :regex, ~r/^(1)(304)([2-9].{6})$/
  field :area_name, "West Virginia"
  field :area_type, "state"
  field :area_abbreviation, "WV"
  builder
end
