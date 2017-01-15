defmodule Phone.NANP.US.OH do
  use Helper.Area
  field :regex, ~r/^(1)(216|220|234|330|380|419|440|513|567|614|740|937)([2-9].{6})$/
  field :area_name, "Ohio"
  field :area_type, "state"
  field :area_abbreviation, "OH"
  builder()
end
