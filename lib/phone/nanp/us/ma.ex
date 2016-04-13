defmodule Phone.NANP.US.MA do
  use Helper.Area
  field :regex, ~r/^(1)(339|351|413|508|617|774|781|857|978)([2-9].{6})/
  field :area_name, "Massachusetts"
  field :area_type, "state"
  field :area_abbreviation, "MA"
  builder
end
