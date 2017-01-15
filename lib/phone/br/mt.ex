defmodule Phone.BR.MT do
  use Helper.Area
  field :regex, ~r/^(55)(6[56])([2-5|89].{7}|9[89].{7}|78.{6})$/
  field :area_name, "Mato Grosso"
  field :area_type, "state"
  field :area_abbreviation, "MT"
  builder()
end
