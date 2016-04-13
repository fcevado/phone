defmodule Phone.NANP.US.MT do
  use Helper.Area
  field :regex, ~r/^(1)(406)([2-9].{6})/
  field :area_name, "Montana"
  field :area_type, "state"
  field :area_abbreviation, "MT"
  builder
end
