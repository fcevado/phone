defmodule Phone.NANP.US.SC do
  use Helper.Area
  field :regex, ~r/^(1)(803|843|854|864)([2-9].{6})/
  field :area_name, "South Carolina"
  field :area_type, "state"
  field :area_abbreviation, "SC"
  builder
end
