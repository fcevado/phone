defmodule Phone.NANP.US.NY do
  use Helper.Area
  field :regex, ~r/^(1)(212|315|347|516|585|607|631|646|716|718|845|914|917|929)([2-9].{6})/
  field :area_name, "New York"
  field :area_type, "state"
  field :area_abbreviation, "NY"
  builder
end
