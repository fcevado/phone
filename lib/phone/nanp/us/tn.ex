defmodule Phone.NANP.US.TN do
  use Helper.Area
  field :regex, ~r/^(1)(423|615|629|731|865|901|931)([2-9].{6})$/
  field :area_name, "Tennessee"
  field :area_type, "state"
  field :area_abbreviation, "TN"
  builder()
end
