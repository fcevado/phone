defmodule Phone.NANP.US.PA do
  use Helper.Area
  field :regex, ~r/^(1)(215|267|272|412|484|570|610|717|724|814|878)([2-9].{6})/
  field :area_name, "Pennsylvania"
  field :area_type, "state"
  field :area_abbreviation, "PA"
  builder
end
