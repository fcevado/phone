defmodule Phone.NANP.US.NJ do
  use Helper.Area
  field :regex, ~r/^(1)(201|551|609|732|848|856|862|908|973)([2-9].{6})/
  field :area_name, "New Jersey"
  field :area_type, "state"
  field :area_abbreviation, "NJ"
  builder
end
