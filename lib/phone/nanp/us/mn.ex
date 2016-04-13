defmodule Phone.NANP.US.MN do
  use Helper.Area
  field :regex, ~r/^(1)(218|320|507|612|651|763|952)([2-9].{6})/
  field :area_name, "Minnesota"
  field :area_type, "state"
  field :area_abbreviation, "MN"
  builder
end
