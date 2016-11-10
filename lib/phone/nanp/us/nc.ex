defmodule Phone.NANP.US.NC do
  use Helper.Area
  field :regex, ~r/^(1)(252|336|704|743|828|910|919|980|984)([2-9].{6})$/
  field :area_name, "North Carolina"
  field :area_type, "state"
  field :area_abbreviation, "NC"
  builder
end
