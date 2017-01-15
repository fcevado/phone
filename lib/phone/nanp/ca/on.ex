defmodule Phone.NANP.CA.ON do
  use Helper.Area
  field :regex, ~r/^(1)(226|249|289|343|365|416|437|519|548|613|647|705|807|905)([2-9].{6})$/
  field :area_name, "Ontario"
  field :area_type, "province"
  field :area_abbreviation, "ON"
  builder()
end
