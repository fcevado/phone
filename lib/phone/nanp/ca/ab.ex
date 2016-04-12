defmodule Phone.NANP.CA.AB do
  use Helper.Area
  field :regex, ~r/^(1)(403|780|587)([2-9].{6})/
  field :area_name, "Alberta"
  field :area_type, "province"
  field :area_abbreviation, "AB"
  builder
end
