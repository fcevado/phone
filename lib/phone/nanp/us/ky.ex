defmodule Phone.NANP.US.KY do
  use Helper.Area
  field :regex, ~r/^(1)(270|364|502|606|859)([2-9].{6})$/
  field :area_name, "Kentucky"
  field :area_type, "state"
  field :area_abbreviation, "KY"
  builder
end
