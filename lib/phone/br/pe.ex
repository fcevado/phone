defmodule Phone.BR.PE do
  use Helper.Area
  field :regex, ~r/^(55)(8[17])([2-5|89].{7}|9[89].{7})$/
  field :area_name, "Pernambuco"
  field :area_type, "state"
  field :area_abbreviation, "PE"
  builder
end
