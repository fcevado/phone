defmodule Phone.NANP.US.IA do
  use Helper.Area
  field :regex, ~r/^(1)(319|515|563|641|712)([2-9].{6})$/
  field :area_name, "Iowa"
  field :area_type, "state"
  field :area_abbreviation, "IA"
  builder()
end
