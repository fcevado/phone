defmodule Phone.NANP.US.AR do
  use Helper.Area
  field :regex, ~r/^(1)(479|501|870)([2-9].{6})/
  field :area_name, "Arkansas"
  field :area_type, "state"
  field :area_abbreviation, "AR"
  builder
end
