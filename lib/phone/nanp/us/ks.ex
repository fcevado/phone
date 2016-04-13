defmodule Phone.NANP.US.KS do
  use Helper.Area
  field :regex, ~r/^(1)(316|620|785|913)([2-9].{6})/
  field :area_name, "Kansas"
  field :area_type, "state"
  field :area_abbreviation, "KS"
  builder
end
