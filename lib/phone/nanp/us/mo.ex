defmodule Phone.NANP.US.MO do
  use Helper.Area
  field :regex, ~r/^(1)(314|417|573|636|660|816)([2-9].{6})/
  field :area_name, "Missouri"
  field :area_type, "state"
  field :area_abbreviation, "MO"
  builder
end
