defmodule Phone.BR.RS do
  use Helper.Area
  field :regex, ~r/^(55)(5[1|3-5])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Rio Grande do Sul"
  field :area_type, "state"
  field :area_abbreviation, "RS"
  builder
end
