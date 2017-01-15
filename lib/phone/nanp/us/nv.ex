defmodule Phone.NANP.US.NV do
  use Helper.Area
  field :regex, ~r/^(1)(702|7[2|7]5)([2-9].{6})$/
  field :area_name, "Nevada"
  field :area_type, "state"
  field :area_abbreviation, "NV"
  builder()
end
