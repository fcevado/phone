defmodule Phone.BR.SP do
  use Helper.Area
  field :regex, ~r/^(55)(1[1-9])([2-5|89].{7}|9.{8}|7[07-9].{6})$/
  field :area_name, "São Paulo"
  field :area_type, "state"
  field :area_abbreviation, "SP"
  builder
end
