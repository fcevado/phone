defmodule Phone.NANP.US.WA do
  use Helper.Area
  field :regex, ~r/^(1)(206|253|360|425|509)([2-9].{6})$/
  field :area_name, "Washington"
  field :area_type, "state"
  field :area_abbreviation, "WA"
  builder()
end
