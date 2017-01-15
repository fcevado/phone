defmodule Phone.NANP.CA.QC do
  use Helper.Area
  field :regex, ~r/^(1)(418|438|450|514|579|581|819|873)([2-9].{6})$/
  field :area_name, "Quebec"
  field :area_type, "province"
  field :area_abbreviation, "QC"
  builder()
end
