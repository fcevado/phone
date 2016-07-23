defmodule Phone.NANP.US.MD do
  use Helper.Area
  field :regex, ~r/^(1)(240|301|410|443|667)([2-9].{6})$/
  field :area_name, "Maryland"
  field :area_type, "state"
  field :area_abbreviation, "MD"
  builder
end
