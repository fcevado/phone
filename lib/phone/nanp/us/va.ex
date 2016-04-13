defmodule Phone.NANP.US.VA do
  use Helper.Area
  field :regex, ~r/^(1)(276|434|540|571|703|757|804)([2-9].{6})/
  field :area_name, "Virginia"
  field :area_type, "state"
  field :area_abbreviation, "VA"
  builder
end
