defmodule Phone.NANP.US.TX do
  use Helper.Area
  field :regex, ~r/^(1)(210|214|254|281|325|346|361|409|430|432|469|512|682|713|737|806|817|830|832|903|915|936|940|956|972|979)([2-9].{6})$/
  field :area_name, "Texas"
  field :area_type, "state"
  field :area_abbreviation, "TX"
  builder
end
