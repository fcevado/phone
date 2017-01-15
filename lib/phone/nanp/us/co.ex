defmodule Phone.NANP.US.CO do
  use Helper.Area
  field :regex, ~r/^(1)(303|719|720|970)([2-9].{6})$/
  field :area_name, "Colorado"
  field :area_type, "state"
  field :area_abbreviation, "CO"
  builder()
end
