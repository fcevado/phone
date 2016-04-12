defmodule Phone.NANP.CA.BC do
  use Helper.Area
  field :regex, ~r/^(1)(604|778|236|250)([2-9].{6})/
  field :area_name, "British Columbia"
  field :area_type, "province"
  field :area_abbreviation, "BC"
  builder
end
