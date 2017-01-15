defmodule Phone.NANP.CA.Territory do
  use Helper.Area
  field :regex, ~r/^(1)(867)([2-9].{6})$/
  field :area_name, ["Northwest Territories", "Nunavut", "Yukon"]
  field :area_type, "territories"
  field :area_abbreviation, ["NT","NU","YT"]
  builder()
end
