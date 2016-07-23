defmodule Phone.NANP.US.GA do
  use Helper.Area
  field :regex, ~r/^(1)(229|404|470|478|678|706|762|770|912)([2-9].{6})$/
  field :area_name, "Georgia"
  field :area_type, "state"
  field :area_abbreviation, "GA"
  builder
end
