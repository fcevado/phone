defmodule Phone.NANP.US.OR do
  use Helper.Area
  field :regex, ~r/^(1)(458|503|541|971)([2-9].{6})/
  field :area_name, "Oregon"
  field :area_type, "state"
  field :area_abbreviation, "OR"
  builder
end
