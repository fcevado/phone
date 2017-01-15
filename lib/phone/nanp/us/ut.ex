defmodule Phone.NANP.US.UT do
  use Helper.Area
  field :regex, ~r/^(1)(385|435|801)([2-9].{6})$/
  field :area_name, "Utah"
  field :area_type, "state"
  field :area_abbreviation, "UT"
  builder()
end
