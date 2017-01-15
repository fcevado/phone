defmodule Phone.NANP.US.IN do
  use Helper.Area
  field :regex, ~r/^(1)(219|260|317|463|574|765|812|930)([2-9].{6})$/
  field :area_name, "Indiana"
  field :area_type, "state"
  field :area_abbreviation, "IN"
  builder()
end
