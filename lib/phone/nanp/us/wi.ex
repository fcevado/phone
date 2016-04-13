defmodule Phone.NANP.US.WI do
  use Helper.Area
  field :regex, ~r/^(1)(262|414|534|608|715|920)([2-9].{6})/
  field :area_name, "Wisconsin"
  field :area_type, "state"
  field :area_abbreviation, "WI"
  builder
end
