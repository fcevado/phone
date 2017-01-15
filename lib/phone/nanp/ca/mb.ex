defmodule Phone.NANP.CA.MB do
  use Helper.Area
  field :regex, ~r/^(1)(204|431)([2-9].{6})$/
  field :area_name, "Manitoba"
  field :area_type, "province"
  field :area_abbreviation, "MB"
  builder()
end
