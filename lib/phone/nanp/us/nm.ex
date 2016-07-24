defmodule Phone.NANP.US.NM do
  use Helper.Area
  field :regex, ~r/^(1)(5[0|7]5)([2-9].{6})$/
  field :area_name, "New Mexico"
  field :area_type, "state"
  field :area_abbreviation, "NM"
  builder
end
