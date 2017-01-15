defmodule Phone.NANP.US.LA do
  use Helper.Area
  field :regex, ~r/^(1)(225|318|337|504|985)([2-9].{6})$/
  field :area_name, "Louisiana"
  field :area_type, "state"
  field :area_abbreviation, "LA"
  builder()
end
